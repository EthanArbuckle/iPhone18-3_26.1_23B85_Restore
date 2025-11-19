@interface CRFormContentTypeModelInput
- (CRFormContentTypeModelInput)initWithFieldArray:(id)a3 labelArray:(id)a4 fieldCount:(unint64_t)a5 labelCount:(unint64_t)a6 useFloatOnly:(BOOL)a7;
- (id)featureValueForName:(id)a3;
@end

@implementation CRFormContentTypeModelInput

- (CRFormContentTypeModelInput)initWithFieldArray:(id)a3 labelArray:(id)a4 fieldCount:(unint64_t)a5 labelCount:(unint64_t)a6 useFloatOnly:(BOOL)a7
{
  v7 = a7;
  v41[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v37.receiver = self;
  v37.super_class = CRFormContentTypeModelInput;
  v15 = [(CRFormContentTypeModelInput *)&v37 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fields, a3);
    objc_storeStrong(&v16->_labels, a4);
    v17 = objc_alloc(MEMORY[0x1E695FED0]);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v19 = v18;
    if (v7)
    {
      v41[0] = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      v21 = [v17 initWithScalars:v20 shape:&unk_1F2BFB0F8 dataType:65568];
      length = v16->_length;
      v16->_length = v21;

      v23 = objc_alloc(MEMORY[0x1E695FED0]);
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v40 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v26 = &unk_1F2BFB110;
      v27 = v23;
      v28 = v25;
      v29 = 65568;
    }

    else
    {
      v39 = v18;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      v31 = [v17 initWithScalars:v30 shape:&unk_1F2BFB128 dataType:131104];
      v32 = v16->_length;
      v16->_length = v31;

      v33 = objc_alloc(MEMORY[0x1E695FED0]);
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v38 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v26 = &unk_1F2BFB140;
      v29 = 131104;
      v27 = v33;
      v28 = v25;
    }

    v34 = [v27 initWithScalars:v28 shape:v26 dataType:v29];
    num_labels = v16->_num_labels;
    v16->_num_labels = v34;
  }

  return v16;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"fields"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormContentTypeModelInput *)self fields];
LABEL_9:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"labels"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormContentTypeModelInput *)self labels];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"length"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormContentTypeModelInput *)self length];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"num_labels"])
  {
    v5 = MEMORY[0x1E695FE60];
    v6 = [(CRFormContentTypeModelInput *)self num_labels];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end