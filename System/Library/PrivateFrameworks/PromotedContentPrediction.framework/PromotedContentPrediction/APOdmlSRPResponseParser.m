@interface APOdmlSRPResponseParser
+ (id)parseResponseForFeatureValues:(id)a3;
@end

@implementation APOdmlSRPResponseParser

+ (id)parseResponseForFeatureValues:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (objc_msgSend_featuresCount(v3, v5, v6))
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_featuresAtIndex_(v3, v7, v9);
      v12 = objc_msgSend_multiarrayFromFeature_(MEMORY[0x277CBFF48], v11, v10);
      v14 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v13, v12);
      v17 = objc_msgSend_name(v10, v15, v16);
      objc_msgSend_setValue_forKey_(v4, v18, v14, v17);

      ++v9;
    }

    while (v9 < objc_msgSend_featuresCount(v3, v19, v20));
  }

  v21 = objc_msgSend_copy(v4, v7, v8);

  return v21;
}

@end