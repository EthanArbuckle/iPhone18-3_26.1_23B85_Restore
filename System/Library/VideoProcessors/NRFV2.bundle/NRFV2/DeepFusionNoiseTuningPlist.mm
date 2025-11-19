@interface DeepFusionNoiseTuningPlist
- (int)readPlist:(id)a3;
@end

@implementation DeepFusionNoiseTuningPlist

- (int)readPlist:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  slEV0 = self->slEV0;
  self->slEV0 = v5;

  v7 = self->slEV0;
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"SL_EV0", v9);
  Plist = objc_msgSend_readPlist_(v7, v11, v10, v12);

  if (Plist)
  {
    sub_2958AAFCC();
  }

  else
  {
    v14 = objc_opt_new();
    slEV0Long = self->slEV0Long;
    self->slEV0Long = v14;

    v16 = self->slEV0Long;
    v19 = objc_msgSend_objectForKeyedSubscript_(v4, v17, @"SL_EV0_LONG", v18);
    Plist = objc_msgSend_readPlist_(v16, v20, v19, v21);

    if (Plist)
    {
      sub_2958AB024();
    }
  }

  return Plist;
}

@end