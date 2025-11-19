@interface CRTextRecognizerModelEspressoOutput
- ($FD4688982923A924290ECB669CAF1EC2)output_label_prob_map;
- (CRTextRecognizerModelEspressoOutput)initWithOutputLabelProbs:(id *)a3 featureInfo:(id)a4 batchSize:(unint64_t)a5;
- (void)dealloc;
@end

@implementation CRTextRecognizerModelEspressoOutput

- (CRTextRecognizerModelEspressoOutput)initWithOutputLabelProbs:(id *)a3 featureInfo:(id)a4 batchSize:(unint64_t)a5
{
  v9 = a4;
  v21.receiver = self;
  v21.super_class = CRTextRecognizerModelEspressoOutput;
  v10 = [(CRTextRecognizerModelEspressoOutput *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->var0;
    v13 = *a3->var2;
    *(v10 + 56) = *&a3->var2[2];
    *(v10 + 40) = v13;
    *(v10 + 24) = v12;
    v14 = *a3->var3;
    v15 = *&a3->var3[2];
    v16 = *&a3->var4;
    *(v10 + 120) = *&a3->var6;
    *(v10 + 104) = v16;
    *(v10 + 88) = v15;
    *(v10 + 72) = v14;
    v17 = *&a3->var8;
    v18 = *&a3->var10;
    v19 = *&a3->var12;
    *(v10 + 23) = *&a3->var14;
    *(v10 + 168) = v19;
    *(v10 + 152) = v18;
    *(v10 + 136) = v17;
    objc_storeStrong(v10 + 1, a4);
    v11->_batchSize = a5;
  }

  return v11;
}

- (void)dealloc
{
  data = self->_output_label_prob_map.data;
  if (data)
  {
    free(data);
    self->_output_label_prob_map.data = 0;
  }

  v4.receiver = self;
  v4.super_class = CRTextRecognizerModelEspressoOutput;
  [(CRTextRecognizerModelEspressoOutput *)&v4 dealloc];
}

- ($FD4688982923A924290ECB669CAF1EC2)output_label_prob_map
{
  v3 = *&self->var11;
  v4 = *&self[1].var0;
  *&retstr->var10 = *&self->var13;
  *&retstr->var12 = v4;
  *&retstr->var14 = self[1].var2[0];
  v5 = *&self->var3[3];
  v6 = *&self->var7;
  *&retstr->var3[2] = *&self->var5;
  *&retstr->var4 = v6;
  *&retstr->var6 = *&self->var9;
  *&retstr->var8 = v3;
  v7 = *&self->var2[3];
  *&retstr->var0 = *&self->var2[1];
  *retstr->var2 = v7;
  *&retstr->var2[2] = *&self->var3[1];
  *retstr->var3 = v5;
  return self;
}

@end