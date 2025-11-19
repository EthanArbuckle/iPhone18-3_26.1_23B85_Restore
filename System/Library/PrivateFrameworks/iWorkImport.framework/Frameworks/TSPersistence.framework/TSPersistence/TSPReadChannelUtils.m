@interface TSPReadChannelUtils
+ (id)dataFromReadChannel:(id)a3;
@end

@implementation TSPReadChannelUtils

+ (id)dataFromReadChannel:(id)a3
{
  v4 = a3;
  v6 = v4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_276AE1ECC;
  v22 = sub_276AE1EDC;
  v23 = 0;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_276AE1ECC;
    v16 = sub_276AE1EDC;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276AE1EE4;
    v11[3] = &unk_27A6E5B00;
    v11[4] = &v12;
    v11[5] = &v18;
    v11[6] = a1;
    objc_msgSend_readWithHandlerAndWait_(v4, v5, v11);
    v7 = v13[5];
    if (v7)
    {
      objc_storeStrong(v19 + 5, v7);
    }

    _Block_object_dispose(&v12, 8);

    v8 = v19[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);

  return v9;
}

@end