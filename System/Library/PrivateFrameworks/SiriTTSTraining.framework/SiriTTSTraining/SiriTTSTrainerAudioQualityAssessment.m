@interface SiriTTSTrainerAudioQualityAssessment
- (float)SNR;
- (float)SNR_end;
- (float)SNR_unnormalized;
- (float)SNR_unnormalized_end;
- (float)SPL;
- (float)SPL_end;
- (float)SPL_unnormalized;
- (float)SPL_unnormalized_end;
- (id).cxx_construct;
- (uint64_t)initWithMetrics:(void *)a3 unnormalized:;
@end

@implementation SiriTTSTrainerAudioQualityAssessment

- (uint64_t)initWithMetrics:(void *)a3 unnormalized:
{
  if (!a1)
  {
    goto LABEL_65;
  }

  if (a1 + 1 != a2)
  {
    v5 = a2 + 1;
    v6 = *a2;
    if (a1[3])
    {
      v8 = (a1 + 2);
      v7 = a1[2];
      v9 = a1[1];
      a1[1] = (a1 + 2);
      *(v7 + 16) = 0;
      a1[2] = 0;
      a1[3] = 0;
      if (*(v9 + 8))
      {
        v10 = *(v9 + 8);
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        v11 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::_DetachedTreeCache::__detach_next(v10);
        if (v6 == v5)
        {
          v13 = v10;
        }

        else
        {
          v12 = v6;
          do
          {
            v13 = v11;
            v14 = *(v12 + 8);
            *(v10 + 32) = v14;
            *(v10 + 40) = v12[5];
            v15 = *v8;
            v16 = (a1 + 2);
            v17 = (a1 + 2);
            if (*v8)
            {
              do
              {
                while (1)
                {
                  v16 = v15;
                  if (v14 >= *(v15 + 8))
                  {
                    break;
                  }

                  v15 = *v15;
                  v17 = v16;
                  if (!*v16)
                  {
                    goto LABEL_16;
                  }
                }

                v15 = v15[1];
              }

              while (v15);
              v17 = v16 + 1;
            }

LABEL_16:
            std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::__insert_node_at(a1 + 1, v16, v17, v10);
            if (v11)
            {
              v11 = std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::_DetachedTreeCache::__detach_next(v11);
            }

            else
            {
              v11 = 0;
            }

            v18 = v12[1];
            if (v18)
            {
              do
              {
                v6 = v18;
                v18 = *v18;
              }

              while (v18);
            }

            else
            {
              do
              {
                v6 = v12[2];
                v19 = *v6 == v12;
                v12 = v6;
              }

              while (!v19);
            }

            if (!v13)
            {
              break;
            }

            v10 = v13;
            v12 = v6;
          }

          while (v6 != v5);
        }

        std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy((a1 + 1), v13);
        if (!v11)
        {
          goto LABEL_34;
        }

        for (i = v11[2]; i; i = i[2])
        {
          v11 = i;
        }

        v20 = (a1 + 1);
        v21 = v11;
      }

      else
      {
        v20 = (a1 + 1);
        v21 = 0;
      }

      std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(v20, v21);
    }

LABEL_34:
    if (v6 != v5)
    {
      operator new();
    }
  }

  if (a3[2])
  {
    v23 = *a3;
    if (*a3 != a3 + 1)
    {
      v24 = (a1 + 2);
      do
      {
        v25 = *v24;
        if (*v24)
        {
          v26 = *(v23 + 8);
          v27 = (a1 + 2);
          while (1)
          {
            while (1)
            {
              v28 = v25;
              v29 = *(v25 + 8);
              if (v26 >= v29)
              {
                break;
              }

              v25 = *v28;
              v27 = v28;
              if (!*v28)
              {
                v30 = 1;
                v27 = v28;
                goto LABEL_49;
              }
            }

            if (v29 >= v26)
            {
              break;
            }

            v27 = v28 + 1;
            v25 = v28[1];
            if (!v25)
            {
              v30 = 1;
              goto LABEL_49;
            }
          }

          v30 = 0;
        }

        else
        {
          v30 = 1;
          v28 = (a1 + 2);
          v27 = (a1 + 2);
        }

LABEL_49:
        v31 = v23[1];
        v32 = v31;
        v33 = v23;
        if (v31)
        {
          do
          {
            v34 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v34 = v33[2];
            v19 = *v34 == v33;
            v33 = v34;
          }

          while (!v19);
        }

        if (v30)
        {
          v35 = v23;
          if (v31)
          {
            do
            {
              v36 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v36 = v35[2];
              v19 = *v36 == v35;
              v35 = v36;
            }

            while (!v19);
          }

          if (*a3 == v23)
          {
            *a3 = v36;
          }

          v37 = a3[1];
          --a3[2];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v37, v23);
          std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::__insert_node_at(a1 + 1, v28, v27, v23);
        }

        v23 = v34;
      }

      while (v34 != a3 + 1);
    }
  }

  v38 = a1;
LABEL_65:

  return a1;
}

- (float)SPL
{
  v3 = 2;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SNR
{
  v3 = 3;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SPL_unnormalized
{
  v3 = 2;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SNR_unnormalized
{
  v3 = 3;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SPL_end
{
  v3 = 4;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SNR_end
{
  v3 = 5;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SPL_unnormalized_end
{
  v3 = 6;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (float)SNR_unnormalized_end
{
  v3 = 7;
  v4 = &v3;
  return *(std::__tree<std::__value_type<AudioQualityMetric,double>,std::__map_value_compare<AudioQualityMetric,std::__value_type<AudioQualityMetric,double>,std::less<AudioQualityMetric>,true>,std::allocator<std::__value_type<AudioQualityMetric,double>>>::__emplace_unique_key_args<AudioQualityMetric,std::piecewise_construct_t const&,std::tuple<AudioQualityMetric const&>,std::tuple<>>(&self->_metrics, &v3) + 5);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end