@interface RSTemporalMeta
- (BOOL)isEqual:(id)equal;
- (RSTemporalMeta)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RSTemporalMeta

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  v73 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v31 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v9 = v6;
        if (self)
        {
          if (self->_isUpdate == v6->_isUpdate)
          {
            v10 = objc_msgSend_count(self->_incrementalIds, v7, v8);
            if (v10 == objc_msgSend_count(v9->_incrementalIds, v11, v12))
            {
              v15 = 0;
              v16 = 16;
              while (objc_msgSend_count(self->_incrementalIds, v13, v14) > v15)
              {
                v19 = objc_msgSend_objectAtIndexedSubscript_(self->_incrementalIds, v17, v15);
                v20 = v9->_incrementalIds;
                v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, v15);
                isEqualToString = objc_msgSend_isEqualToString_(v19, v23, v22);

                if (isEqualToString)
                {
                  begin = self->_incrementalPoses.__begin_;
                  v26 = v9->_incrementalPoses.__begin_;
                  if (vmaxvq_f32(vabdq_f32(*(begin + 4 * v15), *(v26 + 4 * v15))) <= 0.000001)
                  {
                    v27 = 0;
                    v28 = v26 + v16;
                    v29 = begin + v16;
                    while (v27 != 3)
                    {
                      v30 = vmaxvq_f32(vabdq_f32(*&v29[16 * v27], *(v28 + 16 * v27)));
                      ++v27;
                      if (v30 > 0.000001)
                      {
                        --v27;
                        break;
                      }
                    }

                    ++v15;
                    v16 += 64;
                    if (v27 > 2)
                    {
                      continue;
                    }
                  }
                }

                goto LABEL_42;
              }

              v32 = *self->_anon_38;
              v33 = *&self->_anon_38[8];
              v34 = *v9->_anon_38;
              if (v33 - v32 == *&v9->_anon_38[8] - v34)
              {
                if (v33 == v32)
                {
LABEL_25:
                  v37 = *self->_anon_20;
                  v38 = *&self->_anon_20[8];
                  v39 = *v9->_anon_20;
                  if (v38 - v37 == *&v9->_anon_20[8] - v39)
                  {
                    if (v38 == v37)
                    {
LABEL_31:
                      v42 = objc_msgSend_count(self->_mappingInterval, v17, v18);
                      if (v42 == objc_msgSend_count(v9->_mappingInterval, v43, v44))
                      {
                        v70 = 0u;
                        v71 = 0u;
                        v68 = 0u;
                        v69 = 0u;
                        v47 = objc_msgSend_allKeys(self->_mappingInterval, v45, v46);
                        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v68, v72, 16);
                        if (v49)
                        {
                          v50 = *v69;
                          obj = v47;
                          while (2)
                          {
                            for (i = 0; i != v49; ++i)
                            {
                              if (*v69 != v50)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v52 = *(*(&v68 + 1) + 8 * i);
                              v53 = v9->_mappingInterval;
                              v55 = objc_msgSend_objectForKeyedSubscript_(v53, v54, v52);
                              v56 = v55 == 0;

                              if (v56)
                              {
                                goto LABEL_45;
                              }

                              v58 = objc_msgSend_objectForKeyedSubscript_(self->_mappingInterval, v57, v52);
                              v59 = v9->_mappingInterval;
                              v61 = objc_msgSend_objectForKeyedSubscript_(v59, v60, v52);
                              isEqual = objc_msgSend_isEqual_(v58, v62, v61);

                              if ((isEqual & 1) == 0)
                              {
LABEL_45:
                                v31 = 0;
                                v47 = obj;
                                goto LABEL_47;
                              }
                            }

                            v47 = obj;
                            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v68, v72, 16);
                            v31 = 1;
                            if (v49)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        else
                        {
                          v31 = 1;
                        }

LABEL_47:

                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      v40 = v38 - v37;
                      if (v40 <= 1)
                      {
                        v40 = 1;
                      }

                      while (1)
                      {
                        v41 = vabdq_f32(*v37, *v39);
                        if (fmaxf(fmaxf(v41.f32[0], v41.f32[2]), v41.f32[1]) > 0.0001)
                        {
                          break;
                        }

                        ++v39;
                        ++v37;
                        if (!--v40)
                        {
                          goto LABEL_31;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v35 = (v33 - v32) >> 4;
                  if (v35 <= 1)
                  {
                    v35 = 1;
                  }

                  while (1)
                  {
                    v36 = vabd_f32(*v32, *v34);
                    if (fmaxf(v36.f32[0], v36.f32[1]) > 0.000001)
                    {
                      break;
                    }

                    v34 += 2;
                    v32 += 2;
                    if (!--v35)
                    {
                      goto LABEL_25;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_42:
        v31 = 0;
LABEL_43:

        goto LABEL_44;
      }
    }

    v31 = 0;
  }

LABEL_44:

  v65 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  *(v4 + 104) = self->_isUpdate;
  v7 = objc_msgSend_copy(self->_incrementalIds, v5, v6);
  v8 = *(v4 + 112);
  *(v4 + 112) = v7;

  v11 = objc_msgSend_copy(self->_mappingInterval, v9, v10);
  v12 = *(v4 + 120);
  *(v4 + 120) = v11;

  if (v4 != self)
  {
    v13 = *(v4 + 80);
    begin = self->_incrementalPoses.__begin_;
    end = self->_incrementalPoses.__end_;
    v16 = end - begin;
    v17 = *(v4 + 96);
    if (v17 - v13 < (end - begin))
    {
      v18 = v16 >> 6;
      if (v13)
      {
        *(v4 + 88) = v13;
        operator delete(v13);
        v17 = 0;
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
      }

      if (!(v18 >> 58))
      {
        v19 = v17 >> 5;
        if (v17 >> 5 <= v18)
        {
          v19 = v16 >> 6;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (!(v20 >> 58))
        {
          sub_262278D80(v20);
        }
      }

      sub_2621CBEB0();
    }

    v21 = *(v4 + 88);
    v22 = v21 - v13;
    if (v21 - v13 >= v16)
    {
      if (end != begin)
      {
        memmove(v13, begin, end - begin);
      }

      v25 = &v13[v16];
    }

    else
    {
      if (v21 != v13)
      {
        memmove(*(v4 + 80), self->_incrementalPoses.__begin_, v21 - v13);
        v21 = *(v4 + 88);
      }

      v23 = begin + v22;
      v24 = end - (begin + v22);
      if (v24)
      {
        memmove(v21, v23, v24);
      }

      v25 = &v21[v24];
    }

    *(v4 + 88) = v25;
    sub_26229CA04((v4 + 8), *self->_anon_8, *&self->_anon_8[8], (*&self->_anon_8[8] - *self->_anon_8) >> 4);
    sub_26229CA04((v4 + 32), *self->_anon_20, *&self->_anon_20[8], (*&self->_anon_20[8] - *self->_anon_20) >> 4);
    sub_26229CA04((v4 + 56), *self->_anon_38, *&self->_anon_38[8], (*&self->_anon_38[8] - *self->_anon_38) >> 4);
  }

  return v4;
}

- (RSTemporalMeta)init
{
  v13.receiver = self;
  v13.super_class = RSTemporalMeta;
  v2 = [(RSTemporalMeta *)&v13 init];
  v5 = v2;
  if (v2)
  {
    v2->_isUpdate = 0;
    v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
    incrementalIds = v5->_incrementalIds;
    v5->_incrementalIds = v6;

    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
    mappingInterval = v5->_mappingInterval;
    v5->_mappingInterval = v10;
  }

  return v5;
}

@end