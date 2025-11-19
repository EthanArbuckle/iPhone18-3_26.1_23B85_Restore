@interface CRTextSequenceRecognizerTopKModelEspresso
- (id)outputFromOutputBuffers:()vector<espresso_buffer_t featureInfo:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3;
@end

@implementation CRTextSequenceRecognizerTopKModelEspresso

- (id)outputFromOutputBuffers:()vector<espresso_buffer_t featureInfo:(std:(id)a4 :allocator<espresso_buffer_t>> *)a3
{
  v6 = a4;
  var0 = a3->var0;
  v8 = *(a3->var0 + 120);
  v64 = *(a3->var0 + 104);
  v65 = v8;
  v9 = *(var0 + 152);
  v66 = *(var0 + 136);
  v67 = v9;
  v10 = *(var0 + 56);
  v60 = *(var0 + 40);
  v61 = v10;
  v11 = *(var0 + 88);
  v62 = *(var0 + 72);
  v63 = v11;
  v12 = *(var0 + 24);
  v58 = *(var0 + 8);
  v59 = v12;
  v13 = malloc_type_malloc(*(var0 + 9), 0x3AF2B2D1uLL);
  memcpy(v13, *a3->var0, *(a3->var0 + 9));
  v14 = a3->var0;
  v15 = *(a3->var0 + 18);
  v16 = *(a3->var0 + 19);
  v17 = *(a3->var0 + 16);
  v54 = *(a3->var0 + 17);
  v55 = v15;
  v18 = *(v14 + 20);
  v56 = v16;
  v57 = v18;
  v19 = *(v14 + 14);
  v50 = *(v14 + 13);
  v51 = v19;
  v52 = *(v14 + 15);
  v53 = v17;
  v20 = *(v14 + 12);
  v48 = *(v14 + 11);
  v49 = v20;
  v21 = malloc_type_malloc(*(v14 + 30), 0xCAD6D062uLL);
  memcpy(v21, *(a3->var0 + 21), *(a3->var0 + 30));
  v22 = [v6 count];
  if ([(CRTextSequenceRecognizerModelEspresso *)self engine]== 10007)
  {
    v23 = [(CRTextSequenceRecognizerModelEspresso *)self configuration];
    v22 = [v23 batchSize];
  }

  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v43 = v63;
  v38 = v58;
  v39 = v59;
  v33 = v54;
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v27 = v48;
  v37 = v13;
  v26 = v21;
  v28 = v49;
  v24 = [[CRTextRecognizerTopKModelEspressoOutput alloc] initWithOutputLabelProbs:&v37 outputTopKIndices:&v26 featureInfo:v6 batchSize:v22];

  return v24;
}

@end