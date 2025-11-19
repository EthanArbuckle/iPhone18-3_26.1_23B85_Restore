@interface SiriTTSTrainerAudioQualityHelper
+ (id)assessAudioQualityWithBuffers:(id)a3;
+ (id)assessAudioQualityWithPath:(id)a3;
+ (id)assessAudioQualityWithRate:(double)a3 samples:(const float *)a4 count:(unsigned int)a5;
@end

@implementation SiriTTSTrainerAudioQualityHelper

+ (id)assessAudioQualityWithRate:(double)a3 samples:(const float *)a4 count:(unsigned int)a5
{
  LODWORD(v8) = 1061997773;
  BYTE4(v8) = 1;
  *v7 = a3;
  v7[1] = 0xC20C0000C1E00000;
  __p[6] = *&a3;
  __p[8] = v8;
  __p[7] = vneg_f32(0x3F0000003FLL);
  v9[0] = a5;
  v9[1] = a4;
  memset(__p, 0, 24);
  std::vector<std::tuple<unsigned long,float const*>>::__init_with_size[abi:ne200100]<std::tuple<unsigned long,float const*> const*,std::tuple<unsigned long,float const*> const*>(__p, v9, &v10, 1uLL);
  assess_audio_quality(__p, v7);
}

+ (id)assessAudioQualityWithBuffers:(id)a3
{
  __src = 0;
  v33 = 0;
  v34 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 format];
        [v8 sampleRate];
        v10 = v9;

        v11 = [v7 frameCapacity];
        v12 = [v7 floatChannelData];
        v13 = v33;
        if (v33 >= v34)
        {
          v16 = __src;
          v17 = v33 - __src;
          v18 = (v33 - __src) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v20 = v34 - __src;
          if ((v34 - __src) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long,float const*>>>(&__src, v19);
          }

          v21 = (16 * v18);
          v22 = *v12;
          *v21 = v11;
          v21[1] = v22;
          v15 = 16 * v18 + 16;
          memcpy(0, v16, v17);
          v23 = __src;
          __src = 0;
          v33 = v15;
          v34 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v14 = *v12;
          *v33 = v11;
          *(v13 + 1) = v14;
          v15 = (v13 + 16);
        }

        v33 = v15;
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v4);
  }

  else
  {
    v10 = 0x40D7700000000000;
  }

  v26 = 1061997773;
  v27 = 1;
  v25[0] = v10;
  v25[1] = 0xC20C0000C1E00000;
  assess_audio_quality(&__src, v25);
}

+ (id)assessAudioQualityWithPath:(id)a3
{
  v3 = a3;
  *&v13 = 0x40D7700000000000;
  *(&v13 + 1) = 0xC20C0000C1E00000;
  LODWORD(v14) = 1061997773;
  BYTE4(v14) = 1;
  *&v11 = 0x40D7700000000000;
  v12 = v14;
  *(&v11 + 1) = vneg_f32(0x3F0000003FLL);
  boost::filesystem::path::path(__p, [v3 UTF8String]);
  assess_audio_quality(__p, &v13, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  boost::filesystem::path::path(v6, [v3 UTF8String]);
  assess_audio_quality(v6, &v11, __p);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v4 = [SiriTTSTrainerAudioQualityAssessment alloc];
  [(SiriTTSTrainerAudioQualityAssessment *)v4 initWithMetrics:v10 unnormalized:__p];
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(__p, __p[1]);
  std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(v10, v10[1]);

  return v4;
}

@end