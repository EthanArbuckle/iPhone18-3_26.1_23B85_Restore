@interface _LTServerEndpointerFeatures(Daemon)
+ (id)featuresForEndpointer:()Daemon;
- (id)initWithResponse:()Daemon;
@end

@implementation _LTServerEndpointerFeatures(Daemon)

- (id)initWithResponse:()Daemon
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = &off_28488E768;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  if (v5)
  {
    [v5 setWordCount:{objc_msgSend(v4, "num_of_words")}];
    [v5 setTrailingSilenceDuration:{objc_msgSend(v4, "trailing_silence_duration")}];
    [v4 eos_likelihood];
    [v5 setEosLikelihood:?];
    pause_counts = [v4 pause_counts];
    [v5 setPauseCounts:pause_counts];

    [v4 silence_posterior];
    [v5 setSilencePosterior:?];
    [v5 setProcessedAudioDurationInMilliseconds:{objc_msgSend(v4, "processed_audio_duration_ms")}];
    v7 = v5;
  }

  return v5;
}

+ (id)featuresForEndpointer:()Daemon
{
  defaultServerEndpointFeatures = [a3 defaultServerEndpointFeatures];
  v4 = objc_alloc_init(MEMORY[0x277CE1B70]);
  [v4 setWordCount:{objc_msgSend(defaultServerEndpointFeatures, "wordCount")}];
  [v4 setTrailingSilenceDuration:{objc_msgSend(defaultServerEndpointFeatures, "trailingSilenceDuration")}];
  [defaultServerEndpointFeatures endOfSentenceLikelihood];
  [v4 setEosLikelihood:v5];
  [v4 setPauseCounts:MEMORY[0x277CBEBF8]];
  [defaultServerEndpointFeatures silencePosterior];
  [v4 setSilencePosterior:v6];
  [v4 setProcessedAudioDurationInMilliseconds:0];

  return v4;
}

@end