@interface PXStoryMockMovieHighlight
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForTargetDuration:(SEL)duration;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (CGRect)bestPlaybackRect;
- (PXStoryMockMovieHighlight)init;
- (PXStoryMockMovieHighlight)initWithBestPlaybackRect:(CGRect)rect;
- (PXStoryMockMovieHighlight)initWithTimeRange:(id *)range score:(float)score bestPlaybackRect:(CGRect)rect normalizationData:(id)data audioScore:(float)audioScore;
- (PXStoryMockMovieHighlight)initWithTimeRange:(id *)range score:(float)score bestPlaybackRect:(CGRect)rect normalizationData:(id)data face:(BOOL)face voice:(BOOL)voice music:(BOOL)music loudness:(float)self0 peak:(float)self1 audioScore:(float)self2;
- (void)setTimeRange:(id *)range;
@end

@implementation PXStoryMockMovieHighlight

- (CGRect)bestPlaybackRect
{
  x = self->_bestPlaybackRect.origin.x;
  y = self->_bestPlaybackRect.origin.y;
  width = self->_bestPlaybackRect.size.width;
  height = self->_bestPlaybackRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = *&range->var1.var1;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[1].var1.var3;
  *&retstr->var0.var0 = *&self[1].var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var1;
  return self;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)bestTimeRangeForTargetDuration:(SEL)duration
{
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  [(PXStoryMockMovieHighlight *)self timeRange];
  memset(&v14, 0, sizeof(v14));
  CMTimeMakeWithSeconds(&v14, a4, 600);
  memset(&v13, 0, sizeof(v13));
  lhs[0] = *(v16 + 8);
  *rhs = v14;
  CMTimeSubtract(&v7, lhs, rhs);
  *&lhs[0].value = v7;
  lhs[0].epoch = v8;
  CMTimeMultiplyByRatio(&v13, lhs, 1, 2);
  memset(lhs, 0, sizeof(lhs));
  *rhs = v15;
  *&rhs[16] = *&v16[0];
  v7 = *&v13.value;
  *&v8 = v13.epoch;
  CMTimeAdd(lhs, rhs, &v7);
  lhs[1] = v14;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *rhs = v15;
  *&rhs[16] = v16[0];
  v11 = v16[1];
  v8 = *&lhs[0].epoch;
  v9 = *&lhs[1].timescale;
  v7 = *&lhs[0].value;
  PXStoryTimeRangeIntersection(rhs, &v7, retstr);
  return result;
}

- (PXStoryMockMovieHighlight)initWithTimeRange:(id *)range score:(float)score bestPlaybackRect:(CGRect)rect normalizationData:(id)data face:(BOOL)face voice:(BOOL)voice music:(BOOL)music loudness:(float)self0 peak:(float)self1 audioScore:(float)self2
{
  musicCopy = music;
  voiceCopy = voice;
  faceCopy = face;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v33.receiver = self;
  v33.super_class = PXStoryMockMovieHighlight;
  dataCopy = data;
  v25 = [(PXStoryMockMovieHighlight *)&v33 init];
  v26 = *&range->var0.var3;
  v32[0] = *&range->var0.var0;
  v32[1] = v26;
  v32[2] = *&range->var1.var1;
  [(PXStoryMockMovieHighlight *)v25 setTimeRange:v32];
  *&v27 = score;
  [(PXStoryMockMovieHighlight *)v25 setQualityScore:v27];
  [(PXStoryMockMovieHighlight *)v25 setNormalizationData:dataCopy];

  [(PXStoryMockMovieHighlight *)v25 setHasMusic:musicCopy];
  [(PXStoryMockMovieHighlight *)v25 setHasVoice:voiceCopy];
  [(PXStoryMockMovieHighlight *)v25 setHasFace:faceCopy];
  *&v28 = loudness;
  [(PXStoryMockMovieHighlight *)v25 setLoudness:v28];
  *&v29 = peak;
  [(PXStoryMockMovieHighlight *)v25 setPeakVolume:v29];
  [(PXStoryMockMovieHighlight *)v25 setBestPlaybackRect:x, y, width, height];
  *&v30 = audioScore;
  [(PXStoryMockMovieHighlight *)v25 setAudioQualityScore:v30];
  return v25;
}

- (PXStoryMockMovieHighlight)initWithBestPlaybackRect:(CGRect)rect
{
  memset(v5, 0, sizeof(v5));
  LODWORD(v3) = 0.5;
  return [(PXStoryMockMovieHighlight *)self initWithTimeRange:v5 score:0 bestPlaybackRect:0 normalizationData:0 face:0 voice:0.0 music:rect.origin.x loudness:rect.origin.y peak:rect.size.width audioScore:rect.size.height, 0.0, 0.0, v3];
}

- (PXStoryMockMovieHighlight)initWithTimeRange:(id *)range score:(float)score bestPlaybackRect:(CGRect)rect normalizationData:(id)data audioScore:(float)audioScore
{
  v7 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v7;
  v9[2] = *&range->var1.var1;
  return [PXStoryMockMovieHighlight initWithTimeRange:"initWithTimeRange:score:bestPlaybackRect:normalizationData:face:voice:music:loudness:peak:audioScore:" score:v9 bestPlaybackRect:data normalizationData:0 face:0 voice:0 music:? loudness:? peak:? audioScore:?];
}

- (PXStoryMockMovieHighlight)init
{
  memset(v4, 0, sizeof(v4));
  LODWORD(v2) = 0.5;
  return [(PXStoryMockMovieHighlight *)self initWithTimeRange:v4 score:0 bestPlaybackRect:0.0 normalizationData:*MEMORY[0x1E695F050] audioScore:*(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v2];
}

@end