@interface APOdmlServerResponse
- (APOdmlServerResponse)initWithCoder:(id)a3;
- (APOdmlServerResponse)initWithSLPResponse:(id)a3;
- (APOdmlServerResponse)initWithSRPResponse:(id)a3;
- (APOdmlServerResponse)initWithSRPResponseData:(id)a3;
- (id)falseFeatureValue;
- (id)oneHotEncode:(id)a3 trueKey:(id)a4;
- (id)trueFeatureValue;
- (int)ageFromBirthYear:(id)a3;
- (void)addAgeRange:(id)a3 birthYear:(id)a4;
- (void)addCachedFeatures:(id)a3 deviceModel:(id)a4;
- (void)addDeviceClass:(id)a3 newFeatureValues:(id)a4;
- (void)addGender:(id)a3 gender:(id)a4;
- (void)addStorefront:(id)a3 storefront:(id)a4;
- (void)addUserRating:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APOdmlServerResponse

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v6 = objc_msgSend_featureValues(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(v12, v7, v6, @"featureValues");

  v10 = objc_msgSend_odmlEnabled(self, v8, v9);
  objc_msgSend_encodeBool_forKey_(v12, v11, v10, @"odmlEnabled");
}

- (APOdmlServerResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APOdmlServerResponse;
  v6 = [(APOdmlServerResponse *)&v11 init];
  if (v6)
  {
    v6->_odmlEnabled = objc_msgSend_decodeBoolForKey_(v4, v5, @"odmlEnabled");
    v8 = objc_msgSend_decodeObjectForKey_(v4, v7, @"featureValues");
    featureValues = v6->_featureValues;
    v6->_featureValues = v8;
  }

  return v6;
}

- (APOdmlServerResponse)initWithSRPResponse:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APOdmlServerResponse;
  v6 = [(APOdmlServerResponse *)&v11 init];
  if (v6)
  {
    v6->_odmlEnabled = objc_msgSend_isValidResponse_(APOdmlSRPResponseParser, v5, v4);
    v8 = objc_msgSend_parseResponseForFeatureValues_(APOdmlSRPResponseParser, v7, v4);
    featureValues = v6->_featureValues;
    v6->_featureValues = v8;
  }

  return v6;
}

- (APOdmlServerResponse)initWithSLPResponse:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APOdmlServerResponse;
  v6 = [(APOdmlServerResponse *)&v11 init];
  if (v6)
  {
    v6->_odmlEnabled = objc_msgSend_isValidResponse_(APOdmlSLPResponseParser, v5, v4);
    v8 = objc_msgSend_parseResponseForFeatureValues_(APOdmlSLPResponseParser, v7, v4);
    featureValues = v6->_featureValues;
    v6->_featureValues = v8;
  }

  return v6;
}

- (APOdmlServerResponse)initWithSRPResponseData:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = APOdmlServerResponse;
  v5 = [(APOdmlServerResponse *)&v14 init];
  if (v5)
  {
    v6 = [ADOdmlResponseV2 alloc];
    v8 = objc_msgSend_initWithData_(v6, v7, v4);
    v5->_odmlEnabled = objc_msgSend_isValidResponse_(APOdmlSRPResponseParser, v9, v8);
    v11 = objc_msgSend_parseResponseForFeatureValues_(APOdmlSRPResponseParser, v10, v8);
    featureValues = v5->_featureValues;
    v5->_featureValues = v11;
  }

  return v5;
}

- (void)addUserRating:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_featureValues(self, v6, v7);
  v10 = objc_msgSend_initWithDictionary_(v5, v9, v8);

  if (v4)
  {
    if (objc_msgSend_BOOLValue(v4, v11, v12))
    {
      v23 = @"userratingdisplay_off";
      v13 = kAPOdmlFeatureTypeUserRatingValueOn;
      v14 = kAPOdmlFeatureTypeUserRatingValueNull;
      v15 = &v23;
    }

    else
    {
      v22 = @"userratingdisplay_on";
      v13 = kAPOdmlFeatureTypeUserRatingValueOff;
      v14 = kAPOdmlFeatureTypeUserRatingValueNull;
      v15 = &v22;
    }
  }

  else
  {
    v24[0] = @"userratingdisplay_off";
    v13 = kAPOdmlFeatureTypeUserRatingValueNull;
    v14 = kAPOdmlFeatureTypeUserRatingValueOn;
    v15 = v24;
  }

  v15[1] = *v14;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v15, 2);
  v18 = objc_msgSend_oneHotEncode_trueKey_(self, v17, v16, *v13);

  objc_msgSend_addEntriesFromDictionary_(v10, v19, v18);
  objc_msgSend_setFeatureValues_(self, v20, v10);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addCachedFeatures:(id)a3 deviceModel:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v12 = objc_msgSend_featureValues(self, v10, v11);
  v31 = objc_msgSend_initWithDictionary_(v9, v13, v12);

  objc_msgSend_addDeviceClass_newFeatureValues_(self, v14, v7, v31);
  v16 = objc_msgSend_objectForKey_(v8, v15, @"it");

  v18 = objc_msgSend_objectForKey_(v16, v17, @"dm");
  v20 = objc_msgSend_objectForKey_(v18, v19, @"13");
  objc_msgSend_addAgeRange_birthYear_(self, v21, v31, v20);
  v23 = objc_msgSend_objectForKey_(v18, v22, @"17");
  objc_msgSend_addGender_gender_(self, v24, v31, v23);
  v26 = objc_msgSend_objectForKey_(v18, v25, @"35");
  v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"%@", v26);
  objc_msgSend_addStorefront_storefront_(self, v29, v31, v28);
  objc_msgSend_setFeatureValues_(self, v30, v31);
}

- (void)addDeviceClass:(id)a3 newFeatureValues:(id)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (!v6)
  {
    v9 = kAPOdmlFeatureTypeDeviceClassNull;
    v22[0] = @"deviceclass_ipad";
    v10 = kAPOdmlFeatureTypeDeviceClassIphone;
    v11 = kAPOdmlFeatureTypeDeviceClassIpod;
    v12 = v22;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v6, v7, @"iphone"))
  {
    v9 = kAPOdmlFeatureTypeDeviceClassIphone;
    v21 = @"deviceclass_ipad";
    v10 = kAPOdmlFeatureTypeDeviceClassNull;
    v11 = kAPOdmlFeatureTypeDeviceClassIpod;
    v12 = &v21;
LABEL_9:
    v13 = *v10;
    v12[1] = *v11;
    v12[2] = v13;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 3);
    v16 = objc_msgSend_oneHotEncode_trueKey_(self, v15, v14, *v9);

    objc_msgSend_addEntriesFromDictionary_(v8, v17, v16);
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v6, v7, @"ipad"))
  {
    v9 = kAPOdmlFeatureTypeDeviceClassIpad;
    v20 = @"deviceclass_iphone";
    v10 = kAPOdmlFeatureTypeDeviceClassNull;
    v11 = kAPOdmlFeatureTypeDeviceClassIpod;
    v12 = &v20;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v6, v7, @"ipod"))
  {
    v9 = kAPOdmlFeatureTypeDeviceClassIpod;
    v19 = @"deviceclass_iphone";
    v10 = kAPOdmlFeatureTypeDeviceClassNull;
    v11 = kAPOdmlFeatureTypeDeviceClassIpad;
    v12 = &v19;
    goto LABEL_9;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addAgeRange:(id)a3 birthYear:(id)a4
{
  v33[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_msgSend_ageFromBirthYear_(self, v7, v8);
    if (v9 > 17)
    {
      if (v9 > 0x18)
      {
        if (v9 > 0x22)
        {
          if (v9 > 0x2C)
          {
            if (v9 > 0x36)
            {
              if (v9 > 0x40)
              {
                v10 = kAPOdmlFeatureTypeAgeRange65XX;
                v11 = kAPOdmlFeatureTypeAgeRange5564;
                v12 = kAPOdmlFeatureTypeAgeRange4554;
                v13 = kAPOdmlFeatureTypeAgeRange3544;
                v14 = kAPOdmlFeatureTypeAgeRange2534;
                v26 = @"agerange_null";
                v15 = kAPOdmlFeatureTypeAgeRange1824;
                v17 = &v26;
              }

              else
              {
                v10 = kAPOdmlFeatureTypeAgeRange5564;
                v11 = kAPOdmlFeatureTypeAgeRange65XX;
                v12 = kAPOdmlFeatureTypeAgeRange4554;
                v13 = kAPOdmlFeatureTypeAgeRange3544;
                v14 = kAPOdmlFeatureTypeAgeRange2534;
                v27 = @"agerange_null";
                v15 = kAPOdmlFeatureTypeAgeRange1824;
                v17 = &v27;
              }

              v16 = kAPOdmlFeatureTypeAgeRange0017;
            }

            else
            {
              v10 = kAPOdmlFeatureTypeAgeRange4554;
              v11 = kAPOdmlFeatureTypeAgeRange65XX;
              v12 = kAPOdmlFeatureTypeAgeRange5564;
              v13 = kAPOdmlFeatureTypeAgeRange3544;
              v14 = kAPOdmlFeatureTypeAgeRange2534;
              v28 = @"agerange_null";
              v15 = kAPOdmlFeatureTypeAgeRange1824;
              v16 = kAPOdmlFeatureTypeAgeRange0017;
              v17 = &v28;
            }
          }

          else
          {
            v10 = kAPOdmlFeatureTypeAgeRange3544;
            v11 = kAPOdmlFeatureTypeAgeRange65XX;
            v12 = kAPOdmlFeatureTypeAgeRange5564;
            v13 = kAPOdmlFeatureTypeAgeRange4554;
            v14 = kAPOdmlFeatureTypeAgeRange2534;
            v29 = @"agerange_null";
            v15 = kAPOdmlFeatureTypeAgeRange1824;
            v16 = kAPOdmlFeatureTypeAgeRange0017;
            v17 = &v29;
          }
        }

        else
        {
          v10 = kAPOdmlFeatureTypeAgeRange2534;
          v11 = kAPOdmlFeatureTypeAgeRange65XX;
          v12 = kAPOdmlFeatureTypeAgeRange5564;
          v13 = kAPOdmlFeatureTypeAgeRange4554;
          v14 = kAPOdmlFeatureTypeAgeRange3544;
          v30 = @"agerange_null";
          v15 = kAPOdmlFeatureTypeAgeRange1824;
          v16 = kAPOdmlFeatureTypeAgeRange0017;
          v17 = &v30;
        }
      }

      else
      {
        v10 = kAPOdmlFeatureTypeAgeRange1824;
        v11 = kAPOdmlFeatureTypeAgeRange65XX;
        v12 = kAPOdmlFeatureTypeAgeRange5564;
        v13 = kAPOdmlFeatureTypeAgeRange4554;
        v14 = kAPOdmlFeatureTypeAgeRange3544;
        v31 = @"agerange_null";
        v15 = kAPOdmlFeatureTypeAgeRange2534;
        v16 = kAPOdmlFeatureTypeAgeRange0017;
        v17 = &v31;
      }
    }

    else
    {
      v10 = kAPOdmlFeatureTypeAgeRange0017;
      v11 = kAPOdmlFeatureTypeAgeRange65XX;
      v12 = kAPOdmlFeatureTypeAgeRange5564;
      v13 = kAPOdmlFeatureTypeAgeRange4554;
      v14 = kAPOdmlFeatureTypeAgeRange3544;
      v32 = @"agerange_null";
      v15 = kAPOdmlFeatureTypeAgeRange2534;
      v16 = kAPOdmlFeatureTypeAgeRange1824;
      v17 = &v32;
    }
  }

  else
  {
    v10 = kAPOdmlFeatureTypeAgeRangeNull;
    v11 = kAPOdmlFeatureTypeAgeRange65XX;
    v12 = kAPOdmlFeatureTypeAgeRange5564;
    v13 = kAPOdmlFeatureTypeAgeRange4554;
    v14 = kAPOdmlFeatureTypeAgeRange3544;
    v33[0] = @"agerange_a0017";
    v15 = kAPOdmlFeatureTypeAgeRange2534;
    v16 = kAPOdmlFeatureTypeAgeRange1824;
    v17 = v33;
  }

  v18 = *v15;
  v17[1] = *v16;
  v17[2] = v18;
  v19 = *v13;
  v17[3] = *v14;
  v17[4] = v19;
  v20 = *v11;
  v17[5] = *v12;
  v17[6] = v20;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v17, 7);
  v23 = objc_msgSend_oneHotEncode_trueKey_(self, v22, v21, *v10);

  objc_msgSend_addEntriesFromDictionary_(v6, v24, v23);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)addGender:(id)a3 gender:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (!v8)
  {
    v24[0] = @"gender_female";
    v24[1] = @"gender_male";
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v24, 2);
    v11 = objc_msgSend_oneHotEncode_trueKey_(self, v10, v9, @"gender_null");

    objc_msgSend_addEntriesFromDictionary_(v6, v12, v11);
  }

  if (objc_msgSend_isEqualToString_(v8, v7, @"10"))
  {
    v23 = @"gender_female";
    v14 = kAPOdmlFeatureTypeGenderMale;
    v15 = kAPOdmlFeatureTypeGenderNull;
    v16 = &v23;
LABEL_7:
    v16[1] = *v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v16, 2);
    v19 = objc_msgSend_oneHotEncode_trueKey_(self, v18, v17, *v14);

    objc_msgSend_addEntriesFromDictionary_(v6, v20, v19);
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v8, v13, @"11"))
  {
    v22 = @"gender_null";
    v14 = kAPOdmlFeatureTypeGenderFemale;
    v15 = kAPOdmlFeatureTypeGenderMale;
    v16 = &v22;
    goto LABEL_7;
  }

LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addStorefront:(id)a3 storefront:(id)a4
{
  v61[13] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (!v7)
  {
    v11 = kAPOdmlFeatureTypeStorefrontNull;
    v12 = kAPOdmlFeatureTypeKRStorefront;
    v13 = kAPOdmlFeatureTypeJPStorefront;
    v14 = kAPOdmlFeatureTypeESStorefront;
    v15 = kAPOdmlFeatureTypeITStorefront;
    v16 = kAPOdmlFeatureTypeFRStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v61[0] = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = v61;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v7, v8, @"143441"))
  {
    v11 = kAPOdmlFeatureTypeUSStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeMXStorefront;
    v21 = kAPOdmlFeatureTypeCHStorefront;
    v60 = @"storefront_gb143444";
    v22 = kAPOdmlFeatureTypeNZStorefront;
    v23 = kAPOdmlFeatureTypeAUStorefront;
    v24 = &v60;
LABEL_29:
    v36 = *v23;
    v37 = *v22;
    v24[1] = v36;
    v24[2] = v37;
    v38 = *v20;
    v24[3] = *v21;
    v24[4] = v38;
    v39 = *v18;
    v24[5] = *v19;
    v24[6] = v39;
    v40 = *v16;
    v24[7] = *v17;
    v24[8] = v40;
    v41 = *v14;
    v24[9] = *v15;
    v24[10] = v41;
    v42 = *v12;
    v24[11] = *v13;
    v24[12] = v42;
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v24, 13);
    v45 = objc_msgSend_oneHotEncode_trueKey_(self, v44, v43, *v11);

    objc_msgSend_addEntriesFromDictionary_(v6, v46, v45);
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v9, v10, @"143444"))
  {
    v11 = kAPOdmlFeatureTypeGBStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeMXStorefront;
    v21 = kAPOdmlFeatureTypeCHStorefront;
    v59 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeNZStorefront;
    v23 = kAPOdmlFeatureTypeAUStorefront;
    v24 = &v59;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v25, @"143460"))
  {
    v11 = kAPOdmlFeatureTypeAUStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeMXStorefront;
    v21 = kAPOdmlFeatureTypeCHStorefront;
    v58 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeNZStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v58;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v26, @"143461"))
  {
    v11 = kAPOdmlFeatureTypeNZStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeMXStorefront;
    v21 = kAPOdmlFeatureTypeCHStorefront;
    v57 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v57;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v27, @"143459"))
  {
    v11 = kAPOdmlFeatureTypeCHStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeMXStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v56 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v56;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v28, @"143468"))
  {
    v11 = kAPOdmlFeatureTypeMXStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeCAStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v55 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v55;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v29, @"143455"))
  {
    v11 = kAPOdmlFeatureTypeCAStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeDEStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v54 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v54;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v30, @"143443"))
  {
    v11 = kAPOdmlFeatureTypeDEStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeFRStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v53 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v53;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v31, @"143442"))
  {
    v11 = kAPOdmlFeatureTypeFRStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeITStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v52 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v52;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v32, @"143450"))
  {
    v11 = kAPOdmlFeatureTypeITStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeESStorefront;
    v16 = kAPOdmlFeatureTypeFRStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v51 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v51;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v33, @"143454"))
  {
    v11 = kAPOdmlFeatureTypeESStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeJPStorefront;
    v15 = kAPOdmlFeatureTypeITStorefront;
    v16 = kAPOdmlFeatureTypeFRStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v50 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v50;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v34, @"143462"))
  {
    v11 = kAPOdmlFeatureTypeJPStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeKRStorefront;
    v14 = kAPOdmlFeatureTypeESStorefront;
    v15 = kAPOdmlFeatureTypeITStorefront;
    v16 = kAPOdmlFeatureTypeFRStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v49 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v49;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v9, v35, @"143466"))
  {
    v11 = kAPOdmlFeatureTypeKRStorefront;
    v12 = kAPOdmlFeatureTypeStorefrontNull;
    v13 = kAPOdmlFeatureTypeJPStorefront;
    v14 = kAPOdmlFeatureTypeESStorefront;
    v15 = kAPOdmlFeatureTypeITStorefront;
    v16 = kAPOdmlFeatureTypeFRStorefront;
    v17 = kAPOdmlFeatureTypeDEStorefront;
    v18 = kAPOdmlFeatureTypeCAStorefront;
    v19 = kAPOdmlFeatureTypeMXStorefront;
    v20 = kAPOdmlFeatureTypeCHStorefront;
    v21 = kAPOdmlFeatureTypeNZStorefront;
    v48 = @"storefront_us143441";
    v22 = kAPOdmlFeatureTypeAUStorefront;
    v23 = kAPOdmlFeatureTypeGBStorefront;
    v24 = &v48;
    goto LABEL_29;
  }

LABEL_30:

  v47 = *MEMORY[0x277D85DE8];
}

- (id)falseFeatureValue
{
  v2 = objc_msgSend_multiarrayFromArray_(MEMORY[0x277CBFF48], a2, &unk_28736F260);
  v4 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v3, v2);

  return v4;
}

- (id)trueFeatureValue
{
  v2 = objc_msgSend_multiarrayFromArray_(MEMORY[0x277CBFF48], a2, &unk_28736F278);
  v4 = objc_msgSend_featureValueWithMultiArray_(MEMORY[0x277CBFEF8], v3, v2);

  return v4;
}

- (id)oneHotEncode:(id)a3 trueKey:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v13 = objc_msgSend_trueFeatureValue(self, v11, v12);
  objc_msgSend_setValue_forKey_(v10, v14, v13, v7);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v6;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v31, v35, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v23 = *(*(&v31 + 1) + 8 * i);
        v24 = objc_msgSend_falseFeatureValue(self, v18, v19, v31);
        objc_msgSend_setValue_forKey_(v10, v25, v24, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v31, v35, 16);
    }

    while (v20);
  }

  v28 = objc_msgSend_copy(v10, v26, v27);
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (int)ageFromBirthYear:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v7 = objc_msgSend_currentCalendar(v3, v5, v6);
  v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
  v12 = objc_msgSend_components_fromDate_(v7, v11, 28, v10);

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_year(v12, v14, v15);
  v18 = objc_msgSend_numberWithInteger_(v13, v17, v16);
  LODWORD(v10) = objc_msgSend_intValue(v18, v19, v20);
  v23 = objc_msgSend_intValue(v4, v21, v22);

  return v10 - v23;
}

@end