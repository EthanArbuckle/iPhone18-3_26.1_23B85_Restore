@interface CRFormContentTypeModelInput
- (CRFormContentTypeModelInput)initWithFieldArray:(id)array labelArray:(id)labelArray fieldCount:(unint64_t)count labelCount:(unint64_t)labelCount useFloatOnly:(BOOL)only;
- (id)featureValueForName:(id)name;
@end

@implementation CRFormContentTypeModelInput

- (CRFormContentTypeModelInput)initWithFieldArray:(id)array labelArray:(id)labelArray fieldCount:(unint64_t)count labelCount:(unint64_t)labelCount useFloatOnly:(BOOL)only
{
  onlyCopy = only;
  v41[1] = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  labelArrayCopy = labelArray;
  v37.receiver = self;
  v37.super_class = CRFormContentTypeModelInput;
  v15 = [(CRFormContentTypeModelInput *)&v37 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fields, array);
    objc_storeStrong(&v16->_labels, labelArray);
    v17 = objc_alloc(MEMORY[0x1E695FED0]);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
    v19 = v18;
    if (onlyCopy)
    {
      v41[0] = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      v21 = [v17 initWithScalars:v20 shape:&unk_1F2BFB0F8 dataType:65568];
      length = v16->_length;
      v16->_length = v21;

      v23 = objc_alloc(MEMORY[0x1E695FED0]);
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:labelCount];
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
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:labelCount];
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

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"fields"])
  {
    v5 = MEMORY[0x1E695FE60];
    fields = [(CRFormContentTypeModelInput *)self fields];
LABEL_9:
    v7 = fields;
    v8 = [v5 featureValueWithMultiArray:fields];

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"labels"])
  {
    v5 = MEMORY[0x1E695FE60];
    fields = [(CRFormContentTypeModelInput *)self labels];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"length"])
  {
    v5 = MEMORY[0x1E695FE60];
    fields = [(CRFormContentTypeModelInput *)self length];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"num_labels"])
  {
    v5 = MEMORY[0x1E695FE60];
    fields = [(CRFormContentTypeModelInput *)self num_labels];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end