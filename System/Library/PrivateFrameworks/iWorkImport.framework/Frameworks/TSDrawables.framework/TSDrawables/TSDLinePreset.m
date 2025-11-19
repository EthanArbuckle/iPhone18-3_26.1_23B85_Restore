@interface TSDLinePreset
+ (id)lineWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TSDLinePreset)initWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5;
- (unint64_t)hash;
@end

@implementation TSDLinePreset

- (TSDLinePreset)initWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSDLinePreset;
  v12 = [(TSDLinePreset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stroke, a3);
    objc_storeStrong(&v13->_headLineEnd, a4);
    objc_storeStrong(&v13->_tailLineEnd, a5);
  }

  return v13;
}

+ (id)lineWithStroke:(id)a3 headLineEnd:(id)a4 tailLineEnd:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v13 = objc_msgSend_initWithStroke_headLineEnd_tailLineEnd_(v11, v12, v10, v9, v8);

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (!v5)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_stroke(self, v6, v7);
  v11 = objc_msgSend_stroke(v5, v9, v10);
  isEqual = objc_msgSend_isEqual_(v8, v12, v11);

  if (!isEqual)
  {
    goto LABEL_7;
  }

  v16 = objc_msgSend_headLineEnd(self, v14, v15);
  v19 = objc_msgSend_headLineEnd(v5, v17, v18);
  if ((objc_msgSend_isEqual_(v16, v20, v19) & 1) == 0)
  {

    goto LABEL_7;
  }

  v23 = objc_msgSend_tailLineEnd(self, v21, v22);
  v26 = objc_msgSend_tailLineEnd(v5, v24, v25);
  v28 = objc_msgSend_isEqual_(v23, v27, v26);

  if ((v28 & 1) == 0)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_8;
  }

  v29 = 1;
LABEL_8:

  return v29;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_stroke(self, a2, v2);
  objc_msgSend_hash(v4, v5, v6);

  v9 = objc_msgSend_headLineEnd(self, v7, v8);
  objc_msgSend_hash(v9, v10, v11);

  v14 = objc_msgSend_tailLineEnd(self, v12, v13);
  objc_msgSend_hash(v14, v15, v16);

  TSUHashWithSeed();
  return TSUHashWithSeed();
}

@end