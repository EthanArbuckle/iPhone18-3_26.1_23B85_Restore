@interface CRTextRecognizerModelEspressoInput
- (CRTextRecognizerModelEspressoInput)initWithImgInput:(vImage_Buffer *)a3 batchSize:(unint64_t)a4 featureInfo:(id)a5;
- (vImage_Buffer)img_input;
- (void)dealloc;
@end

@implementation CRTextRecognizerModelEspressoInput

- (CRTextRecognizerModelEspressoInput)initWithImgInput:(vImage_Buffer *)a3 batchSize:(unint64_t)a4 featureInfo:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CRTextRecognizerModelEspressoInput;
  v10 = [(CRTextRecognizerModelEspressoInput *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->data;
    *(v10 + 40) = *&a3->width;
    *(v10 + 24) = v12;
    objc_storeStrong(v10 + 1, a5);
    v11->_batchSize = a4;
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