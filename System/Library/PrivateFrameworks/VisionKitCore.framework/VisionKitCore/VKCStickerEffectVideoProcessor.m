@interface VKCStickerEffectVideoProcessor
+ (int)_transcodeSequenceData:(id)a3 effect:(id)a4 maxDimension:(unint64_t)a5 outputData:(id *)a6 progressHandler:(id)a7;
+ (void)applyEffect:(id)a3 toImageSequence:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation VKCStickerEffectVideoProcessor

+ (void)applyEffect:(id)a3 toImageSequence:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  [a1 _transcodeSequenceData:v11 effect:v10 maxDimension:50000 outputData:&v14 progressHandler:v12];
  v13[2](v13, v14, 0);
}

+ (int)_transcodeSequenceData:(id)a3 effect:(id)a4 maxDimension:(unint64_t)a5 outputData:(id *)a6 progressHandler:(id)a7
{
  v31[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v29 = 0;
  Container = CMPhotoDecompressionSessionCreate();
  if (!Container)
  {
    v28 = 0;
    Container = CMPhotoDecompressionSessionCreateContainer();
    if (!Container)
    {
      v27 = 0;
      Container = CMPhotoDecompressionContainerCreateSequenceContainer();
      if (!Container)
      {
        v26 = 0;
        Container = CMPhotoCompressionSessionCreate();
        if (!Container)
        {
          v14 = *MEMORY[0x1E6991860];
          v30[0] = *MEMORY[0x1E6991870];
          v30[1] = v14;
          v31[0] = &unk_1F2C38CC8;
          v31[1] = &unk_1F2C38CE0;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
          Container = CMPhotoCompressionSessionOpenEmptyContainer();
          if (!Container)
          {
            v25 = 0;
            Container = CMPhotoCompressionSessionStartImageSequence();
            if (!Container)
            {
              v24 = 0;
              Container = CMPhotoDecompressionContainerGetImageCountWithOptions();
              if (!Container)
              {
                theDict = 0;
                Container = CMPhotoDecompressionContainerCreateDictionaryDescription();
                if (!Container)
                {
                  v19 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6991A88]);
                  if (v19)
                  {
                    Container = CMPhotoCompressionSessionEndImageSequence();
                    if (!Container)
                    {
                      cf = 0;
                      Container = CMPhotoCompressionSessionCloseContainerAndCopyBacking();
                      if (!Container)
                      {
                        if (v12 && v24 >= 1)
                        {
                          v20[0] = MEMORY[0x1E69E9820];
                          v20[1] = 3221225472;
                          v20[2] = __104__VKCStickerEffectVideoProcessor__transcodeSequenceData_effect_maxDimension_outputData_progressHandler___block_invoke_2;
                          v20[3] = &unk_1E7BE4408;
                          v21 = v12;
                          vk_dispatchMainAfterDelay(v20, 0.0);
                        }

                        v16 = cf;
                        if (cf)
                        {
                          v16 = CFRetain(cf);
                        }

                        v17 = *a6;
                        *a6 = v16;
                      }

                      CF<__CFData const*>::~CF(&cf);
                    }
                  }

                  else
                  {
                    Container = -18;
                  }
                }

                CF<__CFDictionary const*>::~CF(&theDict);
              }
            }
          }
        }

        CF<CMPhotoCompressionSession *>::~CF(&v26);
      }

      CF<CMPhotoDecompressionContainer *>::~CF(&v27);
    }

    CF<CMPhotoDecompressionContainer *>::~CF(&v28);
  }

  CF<CMPhotoDecompressionSession *>::~CF(&v29);

  return Container;
}

void __104__VKCStickerEffectVideoProcessor__transcodeSequenceData_effect_maxDimension_outputData_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __104__VKCStickerEffectVideoProcessor__transcodeSequenceData_effect_maxDimension_outputData_progressHandler___block_invoke_163(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(a1[5] / (a1[6] - 1));
  }

  return result;
}

uint64_t __104__VKCStickerEffectVideoProcessor__transcodeSequenceData_effect_maxDimension_outputData_progressHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(1.0);
  }

  return result;
}

@end