@interface PVRendererBase
- (HGRef<PVRenderJob>)startJobForDelegate:(id)delegate time:(id *)time playback:(BOOL)playback;
- (PVRendererBase)initWithOptions:(id)options;
- (double)averageStat:(int)stat;
- (double)getLastStat:(int)stat;
- (double)numFrames;
- (double)windowedFPS;
- (id).cxx_construct;
- (id)_outputColorSpace:(id)space renderingIntent:(int)intent;
- (id)_workingColorSpace:(id)space outputColorSpace:(id)colorSpace;
- (id)description;
- (unint64_t)taskResidentSize;
- (void)addFrameStats:(const void *)stats;
- (void)addRenderJobInFlight:(HGRef<PVRenderJob>)flight;
- (void)cancelAllPendingRequests;
- (void)dealloc;
- (void)printAndClearStats:(BOOL)stats;
- (void)renderJobFinished:(HGRef<PVRenderJob>)finished;
- (void)setName:(id)name;
- (void)setOutputColorSpace:(id)space;
- (void)trackStats:(BOOL)stats;
@end

@implementation PVRendererBase

- (PVRendererBase)initWithOptions:(id)options
{
  optionsCopy = options;
  if ([PVRendererBase initWithOptions:]::onceToken != -1)
  {
    [PVRendererBase initWithOptions:];
  }

  v15.receiver = self;
  v15.super_class = PVRendererBase;
  v5 = [(PVRendererBase *)&v15 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_hasRendered);
    v7 = [optionsCopy objectForKeyedSubscript:@"kPVRendererBase_RenderingIntent"];
    if (v7)
    {
      intValue = [v7 intValue];
    }

    else
    {
      intValue = 0;
    }

    v9 = [(PVRendererBase *)v6 _outputColorSpace:optionsCopy renderingIntent:intValue];
    [(PVRendererBase *)v6 _workingColorSpace:optionsCopy outputColorSpace:v9];
    v10 = [[PVVideoCompositingContext alloc] initWithDevice:0 workingColorSpace:objc_claimAutoreleasedReturnValue() outputColorSpace:v9];
    compositingContext = v6->_compositingContext;
    v6->_compositingContext = v10;

    [(PVRendererBase *)v6 updateDestinationFormatForOutputColorSpace];
    v6->_immediatelyCancelPendingRequests = 0;
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    inFlightRenderJobsLock = v6->_inFlightRenderJobsLock;
    v6->_inFlightRenderJobsLock = v12;

    operator new();
  }

  return 0;
}

- (id)_outputColorSpace:(id)space renderingIntent:(int)intent
{
  v4 = *&intent;
  spaceCopy = space;
  v7 = spaceCopy;
  if (spaceCopy)
  {
    v8 = [spaceCopy objectForKeyedSubscript:@"kPVRendererBase_OutputColorSpace"];

    if (v8)
    {
      v8 = [v7 objectForKeyedSubscript:@"kPVRendererBase_OutputColorSpace"];
    }
  }

  else
  {
    v8 = 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults stringForKey:@"PVRendererColorSpaceOverride"];
  lowercaseString = [v10 lowercaseString];

  if ([lowercaseString isEqualToString:@"p3"])
  {
    v12 = +[PVColorSpace p3d65GammaColorSpace];
  }

  else if ([lowercaseString isEqualToString:@"srgb"])
  {
    v12 = +[PVColorSpace sRGBColorSpace];
  }

  else
  {
    if (![lowercaseString isEqualToString:@"709"])
    {
      goto LABEL_13;
    }

    v12 = +[PVColorSpace rec709GammaColorSpace];
  }

  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_OverridingColo.isa, self, v8, v12);
    v14 = v13;

    v8 = v14;
    goto LABEL_16;
  }

LABEL_13:
  if (v8)
  {
    v14 = 0;
  }

  else
  {
    [PVVideoCompositingContext defaultOutputColorSpaceWithRenderingIntent:v4];
    v8 = v14 = 0;
  }

LABEL_16:

  return v8;
}

- (id)_workingColorSpace:(id)space outputColorSpace:(id)colorSpace
{
  spaceCopy = space;
  colorSpaceCopy = colorSpace;
  if (!spaceCopy || ([spaceCopy objectForKeyedSubscript:@"kPVRendererBase_WorkingColorSpace"], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (objc_msgSend(spaceCopy, "objectForKeyedSubscript:", @"kPVRendererBase_WorkingColorSpace"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [PVVideoCompositingContext defaultWorkingColorSpaceWithOutputColorSpace:colorSpaceCopy];
  }

  return v8;
}

- (void)dealloc
{
  [(PVRendererBase *)self cancelAllPendingRequests];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  [(PVRendererBase *)self printAndClearStats:1];
  perfStatsLock = self->_perfStatsLock;
  if (perfStatsLock)
  {
    (*(perfStatsLock->var0 + 1))(perfStatsLock);
  }

  perfStats = self->_perfStats;
  if (perfStats)
  {
    PVPerfStats::~PVPerfStats(perfStats);
    MEMORY[0x2666E9F00]();
  }

  v6.receiver = self;
  v6.super_class = PVRendererBase;
  [(PVRendererBase *)&v6 dealloc];
}

- (void)cancelAllPendingRequests
{
  [(NSLock *)self->_inFlightRenderJobsLock lock];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<HGRef<PVRenderJob>>::__init_with_size[abi:ne200100]<HGRef<PVRenderJob>*,HGRef<PVRenderJob>*>(&v6, self->_inFlightRenderJobs.__begin_, self->_inFlightRenderJobs.__end_, (self->_inFlightRenderJobs.__end_ - self->_inFlightRenderJobs.__begin_) >> 3);
  [(NSLock *)self->_inFlightRenderJobsLock unlock];
  immediatelyCancelPendingRequests = [(PVRendererBase *)self immediatelyCancelPendingRequests];
  v4 = v6;
  if (v6 != v7)
  {
    v5 = immediatelyCancelPendingRequests;
    do
    {
      PVRenderJob::CancelJob(*v4++, v5);
    }

    while (v4 != v7);
  }

  v9 = &v6;
  std::vector<HGRef<PVRenderJob>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

- (HGRef<PVRenderJob>)startJobForDelegate:(id)delegate time:(id *)time playback:(BOOL)playback
{
  v9 = v5;
  delegateCopy = delegate;
  atomic_store(1u, &self->_hasRendered);
  v11 = HGObject::operator new(0x118uLL);
  PVRenderJob::PVRenderJob(v11, delegateCopy);
  *v9 = v11;
  add = atomic_fetch_add(&self->_frameCount, 1u);
  v16 = *time;
  PVRenderJob::InitFrameStats(v11, add, &v16, playback);
  v13 = *v9;
  v15 = v13;
  if (v13)
  {
    (*(*v13 + 16))(v13);
  }

  [(PVRendererBase *)self addRenderJobInFlight:&v15];
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  PVRenderJob::StartHandlingRequest(v13);

  return v14;
}

- (void)addRenderJobInFlight:(HGRef<PVRenderJob>)flight
{
  [(NSLock *)self->_inFlightRenderJobsLock lock];
  end = self->_inFlightRenderJobs.__end_;
  if (end >= self->_inFlightRenderJobs.__cap_)
  {
    v7 = std::vector<HGRef<PVRenderJob>>::__emplace_back_slow_path<HGRef<PVRenderJob> const&>(&self->_inFlightRenderJobs, flight.var0);
  }

  else
  {
    v6 = *flight.var0;
    *end = *flight.var0;
    if (v6)
    {
      (*(*v6 + 16))(v6);
    }

    v7 = end + 1;
    self->_inFlightRenderJobs.__end_ = end + 1;
  }

  self->_inFlightRenderJobs.__end_ = v7;
  inFlightRenderJobsLock = self->_inFlightRenderJobsLock;

  [(NSLock *)inFlightRenderJobsLock unlock];
}

- (void)renderJobFinished:(HGRef<PVRenderJob>)finished
{
  if (HGLogger::getLevel("PVSignPost", a2) >= 1)
  {
    kdebug_trace();
  }

  [(NSLock *)self->_inFlightRenderJobsLock lock];
  begin = self->_inFlightRenderJobs.__begin_;
  end = self->_inFlightRenderJobs.__end_;
  if (begin != end)
  {
    v7 = *finished.var0;
    v8 = -begin;
    while (*begin != v7)
    {
      ++begin;
      v8 -= 8;
      if (begin == end)
      {
        goto LABEL_15;
      }
    }

    if (PVRenderJob::State(*begin) == 4)
    {
      [(PVRendererBase *)self addFrameStats:PVRenderJob::GetFrameStats(*begin)];
    }

    if (*begin)
    {
      (*(**begin + 24))(*begin);
    }

    *begin = 0;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<HGRef<PVRenderJob> *,HGRef<PVRenderJob> *,HGRef<PVRenderJob> *>(&v13, (8 - v8), self->_inFlightRenderJobs.__end_, -v8);
    v10 = v9;
    v11 = self->_inFlightRenderJobs.__end_;
    if (v11 != v9)
    {
      do
      {
        std::allocator<HGRef<PVRenderJob>>::destroy[abi:ne200100](&self->_inFlightRenderJobs, --v11);
      }

      while (v11 != v10);
    }

    self->_inFlightRenderJobs.__end_ = v10;
  }

LABEL_15:
  [(NSLock *)self->_inFlightRenderJobsLock unlock];
  if (HGLogger::getLevel("PVSignPost", v12) >= 1)
  {
    kdebug_trace();
  }
}

- (void)setOutputColorSpace:(id)space
{
  spaceCopy = space;
  v4 = atomic_load(&self->_hasRendered);
  if (v4)
  {
    NSLog(&cfstr_WarningCannotC.isa, self);
  }

  else
  {
    compositingContext = [(PVRendererBase *)self compositingContext];
    outputColorSpace = [compositingContext outputColorSpace];
    v7 = [outputColorSpace isEqual:spaceCopy];

    if ((v7 & 1) == 0)
    {
      compositingContext2 = [(PVRendererBase *)self compositingContext];
      [compositingContext2 setOutputColorSpace:spaceCopy];

      [(PVRendererBase *)self updateDestinationFormatForOutputColorSpace];
    }
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  v7 = nameCopy;
  if (nameCopy)
  {
    v5 = nameCopy;
  }

  else
  {
    v5 = &stru_2872E16E0;
  }

  objc_storeStrong(&self->_name, v5);
  perfStatsLock = self->_perfStatsLock;
  HGSynchronizable::Lock(perfStatsLock);
  PVPerfStats::SetName(self->_perfStats, self->_name);
  HGSynchronizable::Unlock(perfStatsLock);
}

- (void)addFrameStats:(const void *)stats
{
  if (PVPerfStats::FrameStats::GetSize(stats))
  {
    perfStatsLock = self->_perfStatsLock;
    HGSynchronizable::Lock(perfStatsLock);
    if (self->_trackStats)
    {
      PVPerfStats::AddFrameStats(self->_perfStats, stats);
    }

    HGSynchronizable::Unlock(perfStatsLock);
  }
}

- (void)trackStats:(BOOL)stats
{
  perfStatsLock = self->_perfStatsLock;
  HGSynchronizable::Lock(perfStatsLock);
  self->_trackStats = stats;
  HGSynchronizable::Unlock(perfStatsLock);
}

- (void)printAndClearStats:(BOOL)stats
{
  if ([PVRendererBase printAndClearStats:]::onceToken != -1)
  {
    [PVRendererBase printAndClearStats:];
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __37__PVRendererBase_printAndClearStats___block_invoke_2;
  v5[3] = &unk_279AA56D8;
  v5[4] = self;
  statsCopy = stats;
  dispatch_sync([PVRendererBase printAndClearStats:]::sSerialLogger, v5);
}

void __37__PVRendererBase_printAndClearStats___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ProVideo.RenderLogQ", 0);
  v1 = [PVRendererBase printAndClearStats:]::sSerialLogger;
  [PVRendererBase printAndClearStats:]::sSerialLogger = v0;
}

HGSynchronizable *__37__PVRendererBase_printAndClearStats___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  HGSynchronizable::Lock(v2);
  PVPerfStats::Print(*(*(a1 + 32) + 56), 0, 1);
  if (*(a1 + 40) == 1)
  {
    PVPerfStats::Reset(*(*(a1 + 32) + 56));
  }

  return HGSynchronizable::Unlock(v2);
}

- (double)windowedFPS
{
  perfStatsLock = self->_perfStatsLock;
  HGSynchronizable::Lock(perfStatsLock);
  v4 = PVPerfStats::WindowedFPS(self->_perfStats);
  HGSynchronizable::Unlock(perfStatsLock);
  return v4;
}

- (double)numFrames
{
  perfStatsLock = self->_perfStatsLock;
  HGSynchronizable::Lock(perfStatsLock);
  v4 = PVPerfStats::NumFrames(self->_perfStats);
  HGSynchronizable::Unlock(perfStatsLock);
  return v4;
}

- (double)averageStat:(int)stat
{
  perfStatsLock = self->_perfStatsLock;
  v17 = perfStatsLock;
  v18 = 0;
  HGSynchronizable::Lock(perfStatsLock);
  v6 = PVPerfStats::AverageFrameStats(self->_perfStats);
  v7 = *v6;
  v8 = *(v6 + 16);
  v9 = *(v6 + 32);
  *&v13[10] = *(v6 + 42);
  v12[1] = v8;
  *v13 = v9;
  v12[0] = v7;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(v6 + 64), *(v6 + 72), (*(v6 + 72) - *(v6 + 64)) >> 3);
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(v12, stat);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  HGSynchronizable::Unlock(perfStatsLock);
  return ValueForIndex;
}

- (double)getLastStat:(int)stat
{
  perfStatsLock = self->_perfStatsLock;
  v17 = perfStatsLock;
  v18 = 0;
  HGSynchronizable::Lock(perfStatsLock);
  FrameStats = PVPerfStats::LastFrameStats(self->_perfStats);
  v7 = *FrameStats;
  v8 = *(FrameStats + 16);
  v9 = *(FrameStats + 32);
  *&v13[10] = *(FrameStats + 42);
  v12[1] = v8;
  *v13 = v9;
  v12[0] = v7;
  v15 = 0;
  v16 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(FrameStats + 64), *(FrameStats + 72), (*(FrameStats + 72) - *(FrameStats + 64)) >> 3);
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(v12, stat);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  HGSynchronizable::Unlock(perfStatsLock);
  return ValueForIndex;
}

- (unint64_t)taskResidentSize
{
  memset(v3, 0, sizeof(v3));
  PVGetMemUsageStats(v3);
  return *(&v3[0] + 1);
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  name = [(PVRendererBase *)self name];
  if (name)
  {
    name2 = [(PVRendererBase *)self name];
    v6 = [name2 isEqual:&stru_2872E16E0];

    if ((v6 & 1) == 0)
    {
      name3 = [(PVRendererBase *)self name];
      v8 = [v3 stringByAppendingFormat:@" %@", name3];

      v3 = v8;
    }
  }

  v9 = [v3 stringByAppendingString:@">"];

  return v9;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end