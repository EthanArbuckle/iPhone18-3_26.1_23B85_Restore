@interface CRTextRecognizerModelEspressoInput
- (CRTextRecognizerModelEspressoInput)initWithImgInput:(vImage_Buffer *)input batchSize:(unint64_t)size featureInfo:(id)info;
- (vImage_Buffer)img_input;
- (void)dealloc;
@end

@implementation CRTextRecognizerModelEspressoInput

- (CRTextRecognizerModelEspressoInput)initWithImgInput:(vImage_Buffer *)input batchSize:(unint64_t)size featureInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = CRTextRecognizerModelEspressoInput;
  v10 = [(CRTextRecognizerModelEspressoInput *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&input->data;
    *(v10 + 40) = *&input->width;
    *(v10 + 24) = v12;
    objc_storeStrong(v10 + 1, info);
    v11->_batchSize = size;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_img_input.data)
  {
    [(CRTextRecognizerModelEspressoInput *)self img_input];
    free(v4);
    self->_img_input.data = 0;
  }

  v3.receiver = self;
  v3.super_class = CRTextRecognizerModelEspressoInput;
  [(CRTextRecognizerModelEspressoInput *)&v3 dealloc];
}

- (vImage_Buffer)img_input
{
  v3 = *&self[1].height;
  *&retstr->data = *&self->rowBytes;
  *&retstr->width = v3;
  return self;
}

@end