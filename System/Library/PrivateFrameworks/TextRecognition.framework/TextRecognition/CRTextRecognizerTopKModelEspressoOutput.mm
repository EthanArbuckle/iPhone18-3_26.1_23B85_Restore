@interface CRTextRecognizerTopKModelEspressoOutput
- ($FD4688982923A924290ECB669CAF1EC2)output_label_prob_map;
- ($FD4688982923A924290ECB669CAF1EC2)output_topk_indices;
- (CRTextRecognizerTopKModelEspressoOutput)initWithOutputLabelProbs:(id *)a3 outputTopKIndices:(id *)a4 featureInfo:(id)a5 batchSize:(unint64_t)a6;
- (void)dealloc;
@end

@implementation CRTextRecognizerTopKModelEspressoOutput

- (CRTextRecognizerTopKModelEspressoOutput)initWithOutputLabelProbs:(id *)a3 outputTopKIndices:(id *)a4 featureInfo:(id)a5 batchSize:(unint64_t)a6
{
  v11 = a5;
  v31.receiver = self;
  v31.super_class = CRTextRecognizerTopKModelEspressoOutput;
  v12 = [(CRTextRecognizerTopKModelEspressoOutput *)&v31 init];
  v13 = v12;
  if (v12)
  {
    v14 = *&a3->var0;
    v15 = *a3->var2;
    *(v12 + 56) = *&a3->var2[2];
    *(v12 + 40) = v15;
    *(v12 + 24) = v14;
    v16 = *a3->var3;
    v17 = *&a3->var3[2];
    v18 = *&a3->var4;
    *(v12 + 120) = *&a3->var6;
    *(v12 + 104) = v18;
    *(v12 + 88) = v17;
    *(v12 + 72) = v16;
    v19 = *&a3->var8;
    v20 = *&a3->var10;
    v21 = *&a3->var12;
    *(v12 + 23) = *&a3->var14;
    *(v12 + 168) = v21;
    *(v12 + 152) = v20;
    *(v12 + 136) = v19;
    v22 = *&a4->var0;
    v23 = *&a4->var2[2];
    *(v12 + 13) = *a4->var2;
    *(v12 + 14) = v23;
    *(v12 + 12) = v22;
    v24 = *a4->var3;
    v25 = *&a4->var3[2];
    v26 = *&a4->var6;
    *(v12 + 17) = *&a4->var4;
    *(v12 + 18) = v26;
    *(v12 + 15) = v24;
    *(v12 + 16) = v25;
    v27 = *&a4->var8;
    v28 = *&a4->var10;
    v29 = *&a4->var12;
    *(v12 + 44) = *&a4->var14;
    *(v12 + 20) = v28;
    *(v12 + 21) = v29;
    *(v12 + 19) = v27;
    objc_storeStrong(v12 + 1, a5);
    v13->_batchSize = a6;
  }

  return v13;
}

- (void)dealloc
{
  data = self->_output_label_prob_map.data;
  if (data)
  {
    free(data);
    self->_output_label_prob_map.data = 0;
  }

  v4 = self->_output_topk_indices.data;
  if (v4)
  {
    free(v4);
    self->_output_topk_indices.data = 0;
  }

  v5.receiver = self;
  v5.super_class = CRTextRecognizerTopKModelEspressoOutput;
  [(CRTextRecognizerTopKModelEspressoOutput *)&v5 dealloc];
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

- ($FD4688982923A924290ECB669CAF1EC2)output_topk_indices
{
  v3 = *&self[2].var0;
  *&retstr->var10 = *&self[1].var13;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[2].var2[0];
  v4 = *&self[1].var7;
  *&retstr->var3[2] = *&self[1].var5;
  *&retstr->var4 = v4;
  v5 = *&self[1].var11;
  *&retstr->var6 = *&self[1].var9;
  *&retstr->var8 = v5;
  v6 = *&self[1].var2[3];
  *&retstr->var0 = *&self[1].var2[1];
  *retstr->var2 = v6;
  v7 = *&self[1].var3[3];
  *&retstr->var2[2] = *&self[1].var3[1];
  *retstr->var3 = v7;
  return self;
}

@end