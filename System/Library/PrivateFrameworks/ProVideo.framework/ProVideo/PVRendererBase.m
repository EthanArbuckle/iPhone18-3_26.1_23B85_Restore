@interface PVRendererBase
- (HGRef<PVRenderJob>)startJobForDelegate:(id)a3 time:(id *)a4 playback:(BOOL)a5;
- (PVRendererBase)initWithOptions:(id)a3;
- (double)averageStat:(int)a3;
- (double)getLastStat:(int)a3;
- (double)numFrames;
- (double)windowedFPS;
- (id).cxx_construct;
- (id)_outputColorSpace:(id)a3 renderingIntent:(int)a4;
- (id)_workingColorSpace:(id)a3 outputColorSpace:(id)a4;
- (id)description;
- (unint64_t)taskResidentSize;
- (void)addFrameStats:(const void *)a3;
- (void)addRenderJobInFlight:(HGRef<PVRenderJob>)a3;
- (void)cancelAllPendingRequests;
- (void)dealloc;
- (void)printAndClearStats:(BOOL)a3;
- (void)renderJobFinished:(HGRef<PVRenderJob>)a3;
- (void)setName:(id)a3;
- (void)setOutputColorSpace:(id)a3;
- (void)trackStats:(BOOL)a3;
@end

@implementation PVRendererBase

- (PVRendererBase)initWithOptions:(id)a3
{
  v4 = a3;
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
    v7 = [v4 objectForKeyedSubscript:@"kPVRendererBase_RenderingIntent"];
    if (v7)
    {
      v8 = [v7 intValue];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PVRendererBase *)v6 _outputColorSpace:v4 renderingIntent:v8];
    [(PVRendererBase *)v6 _workingColorSpace:v4 outputColorSpace:v9];
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

- (id)_outputColorSpace:(id)a3 renderingIntent:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"kPVRendererBase_OutputColorSpace"];

    if (v8)
    {
      v8 = [v7 objectForKeyedSubscript:@"kPVRendererBase_OutputColorSpace"];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 stringForKey:@"PVRendererColorSpaceOverride"];
  v11 = [v10 lowercaseString];

  if ([v11 isEqualToString:@"p3"])
  {
    v12 = +[PVColorSpace p3d65GammaColorSpace];
  }

  else if ([v11 isEqualToString:@"srgb"])
  {
    v12 = +[PVColorSpace sRGBColorSpace];
  }

  else
  {
    if (![v11 isEqualToString:@"709"])
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

- (id)_workingColorSpace:(id)a3 outputColorSpace:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 || ([v5 objectForKeyedSubscript:@"kPVRendererBase_WorkingColorSpace"], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (objc_msgSend(v5, "objectForKeyedSubscript:", @"kPVRendererBase_WorkingColorSpace"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [PVVideoCompositingContext defaultWorkingColorSpaceWithOutputColorSpace:v6];
  }

  return v8;
}

- (void)dealloc
{
  [(PVRendererBase *)self cancelAllPendingRequests];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];

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
  v3 = [(PVRendererBase *)self immediatelyCancelPendingRequests];
  v4 = v6;
  if (v6 != v7)
  {
    v5 = v3;
    do
    {
      PVRenderJob::CancelJob(*v4++, v5);
    }

    while (v4 != v7);
  }

  v9 = &v6;
  std::vector<HGRef<PVRenderJob>>::__destroy_vector::operator()[abi:ne200100](&v9);
}

- (HGRef<PVRenderJob>)startJobForDelegate:(id)a3 time:(id *)a4 playback:(BOOL)a5
{
  v9 = v5;
  v10 = a3;
  atomic_store(1u, &self->_hasRendered);
  v11 = HGObject::operator new(0x118uLL);
  PVRenderJob::PVRenderJob(v11, v10);
  *v9 = v11;
  add = atomic_fetch_add(&self->_frameCount, 1u);
  v16 = *a4;
  PVRenderJob::InitFrameStats(v11, add, &v16, a5);
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

- (void)addRenderJobInFlight:(HGRef<PVRenderJob>)a3
{
  [(NSLock *)self->_inFlightRenderJobsLock lock];
  end = self->_inFlightRenderJobs.__end_;
  if (end >= self->_inFlightRenderJobs.__cap_)
  {
    v7 = std::vector<HGRef<PVRenderJob>>::__emplace_back_slow_path<HGRef<PVRenderJob> const&>(&self->_inFlightRenderJobs, a3.var0);
  }

  else
  {
    v6 = *a3.var0;
    *end = *a3.var0;
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

- (void)renderJobFinished:(HGRef<PVRenderJob>)a3
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
    v7 = *a3.var0;
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

- (void)setOutputColorSpace:(id)a3
{
  v9 = a3;
  v4 = atomic_load(&self->_hasRendered);
  if (v4)
  {
    NSLog(&cfstr_WarningCannotC.isa, self);
  }

  else
  {
    v5 = [(PVRendererBase *)self compositingContext];
    v6 = [v5 outputColorSpace];
    v7 = [v6 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      v8 = [(PVRendererBase *)self compositingContext];
      [v8 setOutputColorSpace:v9];

      [(PVRendererBase *)self updateDestinationFormatForOutputColorSpace];
    }
  }
}

- (void)setName:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
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

- (void)addFrameStats:(const void *)a3
{
  if (PVPerfStats::FrameStats::GetSize(a3))
  {
    perfStatsLock = self->_perfStatsLock;
    HGSynchronizable::Lock(perfStatsLock);
    if (self->_trackStats)
    {
      PVPerfStats::AddFrameStats(self->_perfStats, a3);
    }

    HGSynchronizable::Unlock(perfStatsLock);
  }
}

- (void)trackStats:(BOOL)a3
{
  perfStatsLock = self->_perfStatsLock;
  HGSynchronizable::Lock(perfStatsLock);
  self->_trackStats = a3;
  HGSynchronizable::Unlock(perfStatsLock);
}

- (void)printAndClearStats:(BOOL)a3
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
  v6 = a3;
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

- (double)averageStat:(int)a3
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
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(v12, a3);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  HGSynchronizable::Unlock(perfStatsLock);
  return ValueForIndex;
}

- (double)getLastStat:(int)a3
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
  ValueForIndex = PVPerfStats::FrameStats::GetValueForIndex(v12, a3);
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
  v4 = [(PVRendererBase *)self name];
  if (v4)
  {
    v5 = [(PVRendererBase *)self name];
    v6 = [v5 isEqual:&stru_2872E16E0];

    if ((v6 & 1) == 0)
    {
      v7 = [(PVRendererBase *)self name];
      v8 = [v3 stringByAppendingFormat:@" %@", v7];

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