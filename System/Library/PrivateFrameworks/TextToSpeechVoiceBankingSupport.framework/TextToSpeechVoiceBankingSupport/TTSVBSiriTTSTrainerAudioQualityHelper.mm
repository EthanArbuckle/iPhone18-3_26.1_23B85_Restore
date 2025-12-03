@interface TTSVBSiriTTSTrainerAudioQualityHelper
+ (id)assessAudioForBuffers:(id)buffers;
@end

@implementation TTSVBSiriTTSTrainerAudioQualityHelper

+ (id)assessAudioForBuffers:(id)buffers
{
  buffersCopy = buffers;
  v4 = objc_alloc_init(_TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getSiriTTSTrainerAudioQualityHelperClass_softClass;
  v13 = getSiriTTSTrainerAudioQualityHelperClass_softClass;
  if (!getSiriTTSTrainerAudioQualityHelperClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getSiriTTSTrainerAudioQualityHelperClass_block_invoke;
    v9[3] = &unk_2789C3AA0;
    v9[4] = &v10;
    __getSiriTTSTrainerAudioQualityHelperClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 assessAudioQualityWithBuffers:buffersCopy];
  [v7 SPL];
  [(TTSVBAudioQualityMeasurement *)v4 setSpl:?];
  [v7 SPL_end];
  [(TTSVBAudioQualityMeasurement *)v4 setSplEnd:?];
  [v7 SPL_unnormalized];
  [(TTSVBAudioQualityMeasurement *)v4 setSplUnnormalized:?];
  [v7 SPL_unnormalized_end];
  [(TTSVBAudioQualityMeasurement *)v4 setSplEndUnnormalized:?];
  [v7 SPL_threshold];
  [(TTSVBAudioQualityMeasurement *)v4 setSplThreshold:?];
  [v7 SNR];
  [(TTSVBAudioQualityMeasurement *)v4 setSnr:?];
  [v7 SNR_end];
  [(TTSVBAudioQualityMeasurement *)v4 setSnrEnd:?];
  [v7 SNR_unnormalized];
  [(TTSVBAudioQualityMeasurement *)v4 setSnrUnnormalized:?];
  [v7 SNR_unnormalized_end];
  [(TTSVBAudioQualityMeasurement *)v4 setSnrEndUnnormalized:?];
  [v7 SNR_threshold];
  [(TTSVBAudioQualityMeasurement *)v4 setSnrThreshold:?];

  return v4;
}

@end