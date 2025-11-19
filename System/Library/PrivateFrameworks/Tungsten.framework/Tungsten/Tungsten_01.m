id PXGViewEnvironmentResolvedColor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 traitCollection];
  v5 = [v3 resolvedColorWithTraitCollection:v4];

  return v5;
}

void sub_21ADB4B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21ADB70AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PXGStringToIntegerValueTransformation_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

id PXGCreateDictionaryWithTransforms(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9524;
  v20 = __Block_byref_object_dispose__9525;
  v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __PXGCreateDictionaryWithTransforms_block_invoke;
  v12[3] = &unk_2782A9AA8;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void sub_21ADB8580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PXGCreateDictionaryWithTransforms_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = *(v5 + 16);
  v7 = a3;
  v9 = v6(v5, a2);
  v8 = (*(a1[5] + 16))();

  [*(*(a1[6] + 8) + 40) setObject:v8 forKey:v9];
}

id PXGSerializeSpriteInfo(unsigned __int8 *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v16[0] = @"presentationType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*a1];
  v17[0] = v2;
  v16[1] = @"mediaKind";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[1]];
  v17[1] = v3;
  v16[2] = @"mediaTargetSize";
  v15 = HIDWORD(*(a1 + 1));
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v18[0] = v4;
  HIDWORD(v5) = v15;
  LODWORD(v5) = v15;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v17[2] = v7;
  v16[3] = @"mediaAspectRatio";
  LODWORD(v8) = *(a1 + 4);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v17[3] = v9;
  v16[4] = @"tag";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 3)];
  v17[4] = v10;
  v16[5] = @"mediaVersion";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 16)];
  v17[5] = v11;
  v16[6] = @"flags";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a1[34]];
  v17[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v13;
}

void PXGDeserializeSpriteInfo(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"presentationType"];
  v5 = [v4 intValue];

  *a2 = v5;
  v6 = [v3 objectForKeyedSubscript:@"mediaKind"];
  v7 = [v6 intValue];

  *(a2 + 1) = v7;
  v8 = [v3 objectForKeyedSubscript:@"mediaTargetSize"];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 floatValue];
  v20 = v10;
  v11 = [v8 objectAtIndexedSubscript:1];
  [v11 floatValue];
  v21 = __PAIR64__(v12, v20);

  *(a2 + 8) = v21;
  v13 = [v3 objectForKeyedSubscript:@"mediaAspectRatio"];
  [v13 floatValue];
  v15 = v14;

  *(a2 + 16) = v15;
  v16 = [v3 objectForKeyedSubscript:@"tag"];
  v17 = [v16 intValue];

  *(a2 + 24) = v17;
  v18 = [v3 objectForKeyedSubscript:@"mediaVersion"];
  LOWORD(v17) = [v18 intValue];

  *(a2 + 32) = v17;
  v19 = [v3 objectForKeyedSubscript:@"flags"];

  v22 = v19;
  LOBYTE(v3) = [v22 intValue];

  *(a2 + 34) = v3;
}

id PXGSerializeSpriteStyle(uint64_t a1, double a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v41[0] = @"alpha";
  LODWORD(a2) = *a1;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v42[0] = v39;
  v41[1] = @"clippingRect";
  v40 = *(a1 + 20);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v43 = v3;
  HIDWORD(v4) = DWORD1(v40);
  LODWORD(v4) = DWORD1(v40);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v44 = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v40), DWORD2(v40)))}];
  v45 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v40), HIDWORD(v40)))}];
  v46 = v7;
  *&v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:4];

  v42[1] = v40;
  v41[2] = @"cornerRadius";
  LODWORD(v8) = *(a1 + 36);
  v9 = *(a1 + 40);
  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v43 = v12;
  LODWORD(v13) = v9;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v44 = v14;
  LODWORD(v15) = v10;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v45 = v16;
  LODWORD(v17) = v11;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v46 = v18;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:4];

  v42[2] = v38;
  v41[3] = @"zSortOffset";
  LODWORD(v19) = *(a1 + 52);
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v42[3] = v37;
  v41[4] = @"rotation";
  LODWORD(v20) = *(a1 + 56);
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v42[4] = v21;
  v41[5] = @"scale";
  LODWORD(v22) = *(a1 + 60);
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v42[5] = v23;
  v41[6] = @"contentsRotation";
  LODWORD(v24) = *(a1 + 64);
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v42[6] = v25;
  v41[7] = @"resizableCapInsetsIndex";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 68)];
  v42[7] = v26;
  v41[8] = @"contentsGravity";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 70)];
  v42[8] = v27;
  v41[9] = @"anchorPoint";
  v36 = HIDWORD(*(a1 + 72));
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v43 = v28;
  HIDWORD(v29) = v36;
  LODWORD(v29) = v36;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v44 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:2];

  v42[9] = v31;
  v41[10] = @"translationZ";
  LODWORD(v32) = *(a1 + 80);
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v42[10] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:11];

  return v34;
}

void PXGDeserializeSpriteStyle(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"alpha"];
  [v4 floatValue];
  v6 = v5;

  *a2 = v6;
  v7 = [v3 objectForKeyedSubscript:@"clippingRect"];
  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v54 = v9;
  v10 = [v7 objectAtIndexedSubscript:1];
  [v10 floatValue];
  v53 = v11;
  v12 = [v7 objectAtIndexedSubscript:2];
  [v12 floatValue];
  v52 = v13;
  v14 = [v7 objectAtIndexedSubscript:3];
  [v14 floatValue];
  *&v15 = __PAIR64__(v53, v54);
  *(&v15 + 1) = __PAIR64__(v16, v52);
  *v55 = v15;

  *(a2 + 20) = *v55;
  v17 = [v3 objectForKeyedSubscript:@"cornerRadius"];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 floatValue];
  v20 = v19;

  v21 = [v17 objectAtIndexedSubscript:1];
  [v21 floatValue];
  v23 = v22;

  v24 = [v17 objectAtIndexedSubscript:2];
  [v24 floatValue];
  v26 = v25;

  v27 = [v17 objectAtIndexedSubscript:3];
  [v27 floatValue];
  v29 = v28;

  *(a2 + 36) = v20;
  *(a2 + 40) = v23;
  *(a2 + 44) = v26;
  *(a2 + 48) = v29;

  v30 = [v3 objectForKeyedSubscript:@"zSortOffset"];
  [v30 floatValue];
  v32 = v31;

  *(a2 + 52) = v32;
  v33 = [v3 objectForKeyedSubscript:@"rotation"];
  [v33 floatValue];
  v35 = v34;

  *(a2 + 56) = v35;
  v36 = [v3 objectForKeyedSubscript:@"scale"];
  [v36 floatValue];
  v38 = v37;

  *(a2 + 60) = v38;
  v39 = [v3 objectForKeyedSubscript:@"contentsRotation"];
  [v39 floatValue];
  v41 = v40;

  *(a2 + 64) = v41;
  v42 = [v3 objectForKeyedSubscript:@"resizableCapInsetsIndex"];
  LOWORD(v18) = [v42 intValue];

  *(a2 + 68) = v18;
  v43 = [v3 objectForKeyedSubscript:@"contentsGravity"];
  LOBYTE(v18) = [v43 intValue];

  *(a2 + 70) = v18;
  v44 = [v3 objectForKeyedSubscript:@"anchorPoint"];
  v45 = [v44 objectAtIndexedSubscript:0];
  [v45 floatValue];
  LODWORD(v55[0]) = v46;
  v47 = [v44 objectAtIndexedSubscript:1];
  [v47 floatValue];
  v55[0] = __PAIR64__(v48, v55[0]);

  *(a2 + 72) = v55[0];
  v49 = [v3 objectForKeyedSubscript:@"translationZ"];

  v56 = v49;
  [v56 floatValue];
  v51 = v50;

  *(a2 + 80) = v51;
}

id PXGSerializeSpriteGeometry(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = @"center";
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*a1];
  v17 = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v2];
  v18 = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v19 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:3];

  v15[1] = @"size";
  v16[0] = v7;
  v14 = HIDWORD(*(a1 + 24));
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v17 = v8;
  HIDWORD(v9) = v14;
  LODWORD(v9) = v14;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v18 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:2];

  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v12;
}

void PXGDeserializeSpriteGeometry(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"center"];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 objectAtIndexedSubscript:1];
  [v8 floatValue];
  v10 = v9;

  v11 = [v4 objectAtIndexedSubscript:2];
  [v11 floatValue];
  v13 = v12;

  *a2 = v7;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;

  v20 = [v3 objectForKeyedSubscript:@"size"];

  v14 = [v20 objectAtIndexedSubscript:0];
  [v14 floatValue];
  v18 = v15;
  v16 = [v20 objectAtIndexedSubscript:1];
  [v16 floatValue];
  v19 = __PAIR64__(v17, v18);

  *(a2 + 24) = v19;
}

id PXGSerializeSpriteEntity(unsigned int a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"entityId";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t PXGDeserializeSpriteEntity(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"entityId"];
  v2 = [v1 intValue];

  return v2;
}

id PXGSerializeSpriteTextureInfo(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v28[0] = @"sampleOrigin";
  v25 = HIDWORD(*a1);
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v30 = v2;
  HIDWORD(v3) = v25;
  LODWORD(v3) = v25;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v31 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:2];

  v29[0] = v5;
  v28[1] = @"sampleSize";
  v26 = HIDWORD(*(a1 + 8));
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v30 = v6;
  HIDWORD(v7) = v26;
  LODWORD(v7) = v26;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v31 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:2];

  v29[1] = v9;
  v28[2] = @"textureSize";
  v27 = HIDWORD(*(a1 + 16));
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v30 = v10;
  HIDWORD(v11) = v27;
  LODWORD(v11) = v27;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v31 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:2];

  v29[2] = v13;
  v28[3] = @"orientationTransform";
  v24 = *(a1 + 32);
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v30 = v14;
  HIDWORD(v15) = DWORD1(v24);
  LODWORD(v15) = DWORD1(v24);
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v31 = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24), DWORD2(v24)))}];
  v32 = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24), HIDWORD(v24)))}];
  v33 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:4];

  v29[3] = v19;
  v28[4] = @"alpha";
  LODWORD(v20) = *(a1 + 48);
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v29[4] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];

  return v22;
}

void PXGDeserializeSpriteTextureInfo(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"sampleOrigin"];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 floatValue];
  v34 = v6;
  v7 = [v4 objectAtIndexedSubscript:1];
  [v7 floatValue];
  v35 = __PAIR64__(v8, v34);

  *a2 = v35;
  v9 = [v3 objectForKeyedSubscript:@"sampleSize"];
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 floatValue];
  LODWORD(v35) = v11;
  v12 = [v9 objectAtIndexedSubscript:1];
  [v12 floatValue];
  v36 = __PAIR64__(v13, v35);

  *(a2 + 8) = v36;
  v14 = [v3 objectForKeyedSubscript:@"textureSize"];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 floatValue];
  LODWORD(v36) = v16;
  v17 = [v14 objectAtIndexedSubscript:1];
  [v17 floatValue];
  v37 = __PAIR64__(v18, v36);

  *(a2 + 16) = v37;
  v19 = [v3 objectForKeyedSubscript:@"orientationTransform"];
  v20 = [v19 objectAtIndexedSubscript:0];
  [v20 floatValue];
  LODWORD(v37) = v21;
  v22 = [v19 objectAtIndexedSubscript:1];
  [v22 floatValue];
  v33 = v23;
  v24 = [v19 objectAtIndexedSubscript:2];
  [v24 floatValue];
  v32 = v25;
  v26 = [v19 objectAtIndexedSubscript:3];
  [v26 floatValue];
  *&v27 = __PAIR64__(v33, v37);
  *(&v27 + 1) = __PAIR64__(v28, v32);
  *v38 = v27;

  *(a2 + 32) = *v38;
  v29 = [v3 objectForKeyedSubscript:@"alpha"];

  v39 = v29;
  [v39 floatValue];
  v31 = v30;

  *(a2 + 48) = v31;
}

id PXGSerializeTextureConverterOptions(unint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"effectID";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6[1] = @"wantsMipmaps";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(a1) & 1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

uint64_t PXGDeserializeTextureConverterOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"effectID"];
  v3 = [v2 intValue];

  v4 = [v1 objectForKeyedSubscript:@"wantsMipmaps"];

  v5 = v4;
  LODWORD(v4) = [v5 BOOLValue];

  v6 = 0x100000000;
  if (!v4)
  {
    v6 = 0;
  }

  return v6 | v3;
}

uint64_t PXGRectWithSizeAlignedToRectEdgesWithPadding()
{
  PXEdgesFlippedVertically();

  return PXRectWithSizeAlignedToRectEdgesWithPadding();
}

double PXHorizontalClippingDistanceForCornerRadius(double a1, double a2)
{
  v2 = fmax(a2, 0.0);
  if (v2 >= a1)
  {
    v2 = a1;
  }

  return a1 - sqrt(a1 * a1 - (a1 - v2) * (a1 - v2));
}

__CFString *PXGVisionRenderTextureReuseTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unexpected";
  }

  else
  {
    return off_2782A9AF0[a1];
  }
}

__CFString *PXGVisionRecordingSkippedRenderReasonTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_2782A9B18[a1 - 1];
  }
}

__CFString *PXGTungstenRecordingComponentDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unexpected";
  }

  else
  {
    return off_2782A9B58[a1];
  }
}

BOOL PXGSpriteGeometryIsNull(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 24);
  if (*&v3 == 0.0 && *(&v3 + 1) == 0.0)
  {
    result = 0;
    if (*a1 == 0.0 && *(a1 + 8) == 0.0)
    {
      return *(a1 + 16) == 0.0;
    }
  }

  return result;
}

uint64_t PXGCornerRadiusForSubrectFromContainerCornerRadiusAndRect()
{
  for (i = 0; i != 4; ++i)
  {
    PXRectEdgeValue();
    PXRectEdgeValue();
    result = PXFloatApproximatelyEqualToFloat();
    *(&v2 + i) = result;
  }

  return result;
}

float PXGCornerRadiusByLinearlyInterpolatingCornerRadii()
{
  v0 = 0;
  v3[0] = 0;
  v3[1] = 0;
  do
  {
    PXFloatByLinearlyInterpolatingFloats();
    *&v1 = v1;
    *(v3 + v0) = LODWORD(v1);
    v0 += 4;
  }

  while (v0 != 16);
  return *v3;
}

id PXGSpriteGeometryTransformDescription(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 16);
  *&transform.a = *a1;
  *&transform.c = v3;
  *&transform.tx = *(a1 + 32);
  v4 = NSStringFromCGAffineTransform(&transform);
  v5 = [v2 stringWithFormat:@"{affineTransform:%@, tz:%.3f}", v4, *(a1 + 48)];

  return v5;
}

void PXGAssertErrValidSprites(unsigned int *a1)
{
  PXGAssertErrValidGeometries(*a1, *(a1 + 2));
  PXGAssertErrValidInfos(*a1, *(a1 + 4));
  v2 = *a1;
  v3 = *(a1 + 3);

  PXGAssertErrValidStyles(v2, v3);
}

void PXGAssertErrValidGeometries(uint64_t a1, uint64_t *a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    v4 = 0x277CCA000uLL;
    v5 = 0x277CCA000uLL;
    do
    {
      v6 = *a2;
      if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v10 = [*(v4 + 2192) currentHandler];
        v11 = [*(v5 + 3240) stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
        [v10 handleFailureInFunction:v11 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"center.x", v6}];
      }

      v7 = a2[1];
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v12 = [*(v4 + 2192) currentHandler];
        v13 = [*(v5 + 3240) stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
        [v12 handleFailureInFunction:v13 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"center.y", v7}];

        v4 = 0x277CCA000;
      }

      v8 = a2[2];
      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v14 = [*(v4 + 2192) currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
        [v14 handleFailureInFunction:v15 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"center.z", v8}];

        v5 = 0x277CCA000;
      }

      if ((a2[3] & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v20 = COERCE_FLOAT(a2[3]);
        v16 = [*(v4 + 2192) currentHandler];
        v17 = [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        [v16 handleFailureInFunction:v17 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"size.x", v20}];

        v9 = *(a2 + 7);
      }

      else
      {
        LODWORD(v9) = HIDWORD(a2[3]);
      }

      if ((LODWORD(v9) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v18 = [*(v4 + 2192) currentHandler];
        v19 = [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        [v18 handleFailureInFunction:v19 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"size.y", v9}];
      }

      a2 += 4;
      --v3;
    }

    while (v3);
  }
}

void PXGAssertErrValidInfos(uint64_t a1, unsigned __int8 *a2)
{
  if (a1 >= 1)
  {
    v3 = a1;
    do
    {
      if (*a2 >= 3u)
      {
        v14 = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAssertErrValidInfos(NSInteger, PXGSpriteInfo * _Nonnull)"}];
        [v14 handleFailureInFunction:v10 file:@"PXGTypes.m" lineNumber:166 description:{@"Invalid value: presentationType=%d", *a2}];
      }

      if ((*(a2 + 2) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v7 = COERCE_FLOAT(*(a2 + 1));
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        [v11 handleFailureInFunction:v6 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"mediaTargetSize.x", v7}];

        v4 = *(a2 + 3);
      }

      else
      {
        LODWORD(v4) = HIDWORD(*(a2 + 1));
      }

      if ((LODWORD(v4) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        [v12 handleFailureInFunction:v8 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"mediaTargetSize.y", v4}];
      }

      v5 = *(a2 + 4);
      if ((LODWORD(v5) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        [v13 handleFailureInFunction:v9 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"mediaAspectRatio", v5}];
      }

      a2 += 40;
      --v3;
    }

    while (v3);
  }
}

void PXGAssertErrValidStyles(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    v2 = a1;
    v3 = (a2 + 8);
    v4 = 0x277CCA000uLL;
    v5 = 0x277CCA000uLL;
    v6 = @"alpha";
    v7 = @"contentsRect.x";
    v8 = @"contentsRect.y";
    v9 = @"contentsRect.z";
    v10 = @"contentsRect.w";
    v11 = @"cornerRadius.topLeft";
    v12 = @"cornerRadius.topRight";
    v13 = @"cornerRadius.bottomLeft";
    v14 = @"cornerRadius.bottomRight";
    do
    {
      v15 = *(v3 - 2);
      if ((LODWORD(v15) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v25 = *(v4 + 2192);
        v26 = v6;
        v27 = v14;
        v28 = [v25 currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v30 = v29 = v5;
        [v28 handleFailureInFunction:v30 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v26, v15}];

        v5 = v29;
        v14 = v27;
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = v26;
        v4 = 0x277CCA000;
      }

      v16 = v3[11];
      if ((LODWORD(v16) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v31 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v33 = v32 = v5;
        [v31 handleFailureInFunction:v33 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", @"zSortOffset", v16}];

        v5 = v32;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v17 = *(v3 - 1);
      if ((v17 & 0x7FFFFFFF) >= 0x7F800000)
      {
        v34 = v7;
        v66 = *(v3 - 1);
        v35 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v37 = v36 = v5;
        [v35 handleFailureInFunction:v37 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v34, *&v66}];

        v5 = v36;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = v34;
        v6 = @"alpha";
        v18 = *v3;
      }

      else
      {
        v18 = *(&v17 + 1);
      }

      if ((LODWORD(v18) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v38 = v8;
        v39 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v41 = v40 = v5;
        [v39 handleFailureInFunction:v41 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v38, v18}];

        v5 = v40;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = v38;
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v19 = v3[1];
      if ((LODWORD(v19) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v42 = v9;
        v43 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v45 = v44 = v5;
        [v43 handleFailureInFunction:v45 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v42, v19}];

        v5 = v44;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = v42;
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v20 = v3[2];
      if ((LODWORD(v20) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v46 = v10;
        v47 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v49 = v48 = v5;
        [v47 handleFailureInFunction:v49 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v46, v20}];

        v5 = v48;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = v46;
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v21 = v3[7];
      if ((LODWORD(v21) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v50 = v11;
        v51 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v53 = v52 = v5;
        [v51 handleFailureInFunction:v53 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v50, v21}];

        v5 = v52;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = v50;
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v22 = v3[8];
      if ((LODWORD(v22) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v54 = v12;
        v55 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v57 = v56 = v5;
        [v55 handleFailureInFunction:v57 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v54, v22}];

        v5 = v56;
        v14 = @"cornerRadius.bottomRight";
        v13 = @"cornerRadius.bottomLeft";
        v12 = v54;
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v23 = v3[9];
      if ((LODWORD(v23) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v58 = v13;
        v59 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v61 = v60 = v5;
        [v59 handleFailureInFunction:v61 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v58, v23}];

        v5 = v60;
        v14 = @"cornerRadius.bottomRight";
        v13 = v58;
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v24 = v3[10];
      if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v62 = v14;
        v63 = [*(v4 + 2192) currentHandler];
        [*(v5 + 3240) stringWithUTF8String:{"void _assertValidFloat(float, NSString *__strong)"}];
        v65 = v64 = v5;
        [v63 handleFailureInFunction:v65 file:@"PXGTypes.m" lineNumber:115 description:{@"Invalid value: %@ = %.3f", v62, v24}];

        v5 = v64;
        v14 = v62;
        v13 = @"cornerRadius.bottomLeft";
        v12 = @"cornerRadius.topRight";
        v11 = @"cornerRadius.topLeft";
        v10 = @"contentsRect.w";
        v9 = @"contentsRect.z";
        v8 = @"contentsRect.y";
        v7 = @"contentsRect.x";
        v6 = @"alpha";
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }
}

void PXGAssertErrValidFloat(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v3 handleFailureInFunction:v2 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"float", *&a1}];
  }
}

void PXGAssertErrValidPoint(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v4 handleFailureInFunction:v5 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"x", *&a1}];
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v7 handleFailureInFunction:v6 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"y", *&a2}];
  }
}

void PXGAssertErrValidRect(double a1, double a2, double a3, double a4)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v8 handleFailureInFunction:v9 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"origin.x", *&a1}];
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v10 handleFailureInFunction:v11 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"origin.y", *&a2}];
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"size.width", *&a3}];
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v15 handleFailureInFunction:v14 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"size.height", *&a4}];
  }
}

void PXGAssertErrValidSize(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v4 handleFailureInFunction:v5 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"width", *&a1}];
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v7 handleFailureInFunction:v6 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"height", *&a2}];
  }
}

void PXGAssertErrValidAffineTransform(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v8 handleFailureInFunction:v9 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"a", v2}];
  }

  v3 = a1[1];
  if ((v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v10 handleFailureInFunction:v11 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"b", v3}];
  }

  v4 = a1[2];
  if ((v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"c", v4}];
  }

  v5 = a1[3];
  if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v14 handleFailureInFunction:v15 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"d", v5}];
  }

  v6 = a1[4];
  if ((v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v16 handleFailureInFunction:v17 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"tx", v6}];
  }

  v7 = a1[5];
  if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _assertValidCGFloat(CGFloat, NSString *__strong)"}];
    [v19 handleFailureInFunction:v18 file:@"PXGTypes.m" lineNumber:119 description:{@"Invalid value: %@ = %.3f", @"ty", v7}];
  }
}

__n128 PXGSpriteTextureInfoOrientationFromCGOrientation(int a1)
{
  if (PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken != -1)
  {
    dispatch_once(&PXGSpriteTextureInfoOrientationFromCGOrientation_onceToken, &__block_literal_global_10913);
  }

  return PXGSpriteTextureInfoOrientationFromCGOrientation_transforms[a1];
}

uint64_t PXGSpriteTextureInfoOrientationToCGOrientation(__n128 a1)
{
  if (a1.n128_f32[2] >= 0.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 8;
  }

  if (a1.n128_f32[1] > 0.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1;
  }

  if (a1.n128_f32[2] >= 0.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  if (a1.n128_f32[1] < 0.0)
  {
    v2 = v3;
  }

  if (a1.n128_f32[3] >= 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  if (a1.n128_f32[0] > 0.0)
  {
    v2 = v4;
  }

  if (a1.n128_f32[3] >= 0.0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (a1.n128_f32[0] < 0.0)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

float64x2_t PXGSpriteTextureInfoOrientationToCGAffineTransform@<Q0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>)
{
  v2 = vcvtq_f64_f32(*a2.f32);
  result = vcvt_hight_f64_f32(a2);
  *a1 = v2;
  *(a1 + 16) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

unint64_t PXGSpriteIndexRangeUnion(unint64_t range1, NSRange range2)
{
  v2 = HIDWORD(range1);
  range1 = range1;
  v8.length = v3;
  v8.location = v4;
  v5 = v2;
  v6 = NSUnionRange(*&range1, v8);
  return LODWORD(v6.location) | (LODWORD(v6.length) << 32);
}

unint64_t PXGSpriteIndexRangeIntersection(unint64_t a1, unint64_t a2)
{
  v2 = 0;
  if (HIDWORD(a1))
  {
    v3 = 0;
    if (HIDWORD(a2))
    {
      v4 = HIDWORD(a1) + a1;
      v5 = HIDWORD(a2) + a2;
      if (a1 <= a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      if (v4 >= v5)
      {
        v7 = HIDWORD(a2) + a2;
      }

      else
      {
        v7 = HIDWORD(a1) + a1;
      }

      v8 = (v7 - v6) << 32;
      v9 = v5 > a1;
      if (v5 > a1)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v6 = 0;
      }

      v11 = v4 > a2;
      if (v4 > a2)
      {
        v2 = v10;
      }

      else
      {
        v2 = 0;
      }

      if (v11)
      {
        v3 = v6;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

id PXGSpriteGeometryDescription(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f, %.5f}", *a1, a1[1], a1[2]];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f}", COERCE_FLOAT(a1[3]), COERCE_FLOAT(HIDWORD(a1[3]))];
  v5 = [v2 stringWithFormat:@"{center=%@, size=%@}", v3, v4];

  return v5;
}

float PXSpriteGeometryScaleWithTransform(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float64x2_t a6, float64_t a7, __n128 a8)
{
  v8 = *(a1 + 24);
  v9 = *(a1 + 16);
  v10 = v9 - a8.n128_f32[2];
  v11 = vmuls_lane_f32(0.5, v8, 1);
  v12 = *a1;
  v13 = (v12 - (0.5 * v8.f32[0])) - a8.n128_f32[0];
  v14 = *(a1 + 8);
  v15 = (v11 + v14) - a8.n128_f32[1];
  v16 = (v14 - v11) - a8.n128_f32[1];
  v17 = ((0.5 * v8.f32[0]) + v12) - a8.n128_f32[0];
  v18 = vmulq_n_f32(a2, v13);
  v19 = vaddq_f32(a5, vmlaq_n_f32(vmlaq_n_f32(v18, a3, v15), a4, v10));
  v20 = vaddq_f32(a5, vmlaq_n_f32(vmlaq_n_f32(v18, a3, v16), a4, v10));
  v21 = vmulq_n_f32(a2, v17);
  v22 = vaddq_f32(a5, vmlaq_n_f32(vmlaq_n_f32(v21, a3, v16), a4, v10));
  v23 = vaddq_f32(a5, vmlaq_n_f32(vmlaq_n_f32(v21, a3, v15), a4, v10));
  v21.i64[0] = vuzp2q_s32(vuzp2q_s32(v19, v20), v19).u64[0];
  v21.i64[1] = __PAIR64__(v23.u32[3], v22.u32[3]);
  v24 = vmaxv_u16(vmovn_s32(vclezq_f32(v21)));
  result = 0.0;
  if ((v24 & 1) == 0)
  {
    v26 = vdiv_f32(*v20.i8, *&vdupq_laneq_s32(v20, 3));
    v27 = vdiv_f32(*v23.i8, *&vdupq_laneq_s32(v23, 3));
    v28 = vcgt_f32(v27, v26);
    v29 = vbsl_s8(v28, v26, v27);
    v30 = vdiv_f32(*v22.i8, *&vdupq_laneq_s32(v22, 3));
    v31 = vbsl_s8(vcgt_f32(v29, v30), v30, v29);
    v32 = vdiv_f32(*v19.i8, *&vdupq_laneq_s32(v19, 3));
    v33 = vbsl_s8(v28, v27, v26);
    v34 = vbsl_s8(vcgt_f32(v33, v30), v33, v30);
    a6.f64[1] = a7;
    v35 = vmulq_f64(a6, vabdq_f64(vcvtq_f64_f32(vbsl_s8(vcgt_f32(v34, v32), v34, v32)), vcvtq_f64_f32(vbsl_s8(vcgt_f32(v31, v32), v32, v31))));
    __asm { FMOV            V1.2D, #0.5 }

    v41 = vdivq_f64(vmulq_f64(v35, _Q1), vcvtq_f64_f32(v8));
    if (v41.f64[0] < v41.f64[1])
    {
      v41.f64[0] = v41.f64[1];
    }

    return v41.f64[0];
  }

  return result;
}

id PXGSpriteStyleDescription(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{"];
  v3 = v2;
  if (*a1 != 1.0)
  {
    [v2 appendFormat:@"alpha=%.2f, ", *a1];
  }

  v4 = *(a1 + 4);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v4, xmmword_21AE2D390)))))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f, %.2f, %.2f}", v4.f32[0], v4.f32[1], v4.f32[2], v4.f32[3]];
    [v3 appendFormat:@"contentsRect=%@, ", v5];
  }

  v6 = *(a1 + 20);
  v7 = COERCE_FLOAT(*(a1 + 28));
  if (v7 != 1000000000.0 || *(&v6 + 3) != 1000000000.0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f, %.2f, %.2f}", *&v6, *(&v6 + 1), v7, *(&v6 + 3)];
    [v3 appendFormat:@"clippingRect=%@, ", v8];
  }

  v9 = *(a1 + 36);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v9)))))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{⌜:%.1f ⌝:%.1f ⌞:%.1f ⌟:%.1f}", v9.f32[0], v9.f32[1], v9.f32[2], v9.f32[3]];
    [v3 appendFormat:@"cornerRadius=%@, ", v10];
  }

  v11 = *(a1 + 52);
  if (v11 != 0.0)
  {
    [v3 appendFormat:@"zSortOffset=%.5f, ", v11];
  }

  if (*(a1 + 68))
  {
    [v3 appendFormat:@"resizableCapInsetsIndex=%u, ", *(a1 + 68)];
  }

  if (*(a1 + 70))
  {
    if (*(a1 + 70) > 0xDu)
    {
      v12 = @"unexpected";
    }

    else
    {
      v12 = off_2782A9BE8[*(a1 + 70)];
    }

    v13 = v12;
    [v3 appendFormat:@"contentsGravity=%@, ", v13];
  }

  [v3 px_removeSuffix:{@", "}];
  [v3 appendString:@"}"];

  return v3;
}

__CFString *PXGContentsGravityDescription(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return @"unexpected";
  }

  else
  {
    return off_2782A9BE8[a1];
  }
}

__CFString *PXGPresentationTypeDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unexpected";
  }

  else
  {
    return off_2782A9C58[a1];
  }
}

__CFString *PXGMediaKindDescription(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return @"unexpected";
  }

  else
  {
    return off_2782A9C70[a1];
  }
}

uint64_t PXGMediaKindGetSupportedResize(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 3;
  }

  else
  {
    return qword_21AE2DC50[a1];
  }
}

id PXGSpriteInfoFlagsDescription(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __PXGSpriteInfoFlagsDescription_block_invoke;
  v10 = &unk_2782A9B80;
  v12 = a1;
  v3 = v2;
  v11 = v3;
  v4 = MEMORY[0x21CEE40A0](&v7);
  (v4)[2](v4, 1, @"alwaysLoad");
  (v4)[2](v4, 2, @"excludeFromHitTesting");
  (v4)[2](v4, 4, @"focusItemProxy");
  (v4)[2](v4, 16, @"excludeFromRemoteEffects");
  [v3 insertString:@"[" atIndex:{0, v7, v8, v9, v10}];
  [v3 appendString:@"]"];
  v5 = v3;

  return v3;
}

void __PXGSpriteInfoFlagsDescription_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ((a2 & ~*(a1 + 40)) == 0)
  {
    v8 = v5;
    v6 = [*(a1 + 32) length];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 appendFormat:@"|%@", v8];
    }

    else
    {
      [v7 setString:v8];
    }

    v5 = v8;
  }
}

id PXGSpriteTextureInfoDescription(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f}", COERCE_FLOAT(*a1), COERCE_FLOAT(HIDWORD(*a1))];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f}", COERCE_FLOAT(a1[1]), COERCE_FLOAT(HIDWORD(a1[1]))];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f}", COERCE_FLOAT(a1[2]), COERCE_FLOAT(HIDWORD(a1[2]))];
  v6 = [v2 stringWithFormat:@"{contentsOrigin:%@, contentsSize:%@, textureSize:%@}", v3, v4, v5];

  return v6;
}

__CFString *PXGColorOpcodeDescription(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return @"Unknown";
  }

  else
  {
    return off_2782A9CD8[a1];
  }
}

void PXGSpriteApplyTransform(double *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v7 = *(a4 + 1);
  *&t1.a = *a4;
  *&t1.c = v7;
  *&t1.tx = *(a4 + 2);
  v8 = a4[6];
  v22 = *PXGSpriteGeometryTransformIdentity;
  if (!CGAffineTransformEqualToTransform(&t1, &v22) || v8 != 0.0)
  {
    v9 = *a4;
    v10 = a4[1];
    v11 = a4[2];
    v12 = a4[3];
    v13 = a4[4];
    v14 = a4[5];
    v15 = v11 * *(a2 + 60) + *a4 * *(a2 + 60);
    *(a2 + 60) = v15;
    v16 = a1[1];
    v17 = v13 + v11 * v16 + v9 * *a1;
    *a1 = v17;
    a1[1] = v14 + v12 * v16 + v10 * v17;
    *&v17 = v8;
    a1[2] = a1[2] + *&v17;
    v18 = *(a2 + 20);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v18, xmmword_21AE2D400)))))
    {
      v24.origin.x = v18.f32[0];
      v24.origin.y = v18.f32[1];
      v24.size.width = v18.f32[2];
      v24.size.height = v18.f32[3];
      v19 = *(a4 + 1);
      *&t1.a = *a4;
      *&t1.c = v19;
      *&t1.tx = *(a4 + 2);
      v25 = CGRectApplyAffineTransform(v24, &t1);
      height = v25.size.height;
      y = v25.origin.y;
      *(a2 + 20) = vcvt_hight_f32_f64(vcvt_f32_f64(v25.origin), v25.size);
    }
  }
}

float32x4_t PXGSpriteStyleUnionClippingRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = a2;
  v7 = *(a1 + 20);
  *result.f32 = vmovn_s32(vmvnq_s8(vceqq_f32(v7, xmmword_21AE2D400)));
  result.i16[0] = vmaxv_u16(*result.f32);
  if (result.i8[0])
  {
    v14.origin.x = v7.f32[0];
    v14.origin.y = v7.f32[1];
    v14.size.width = v7.f32[2];
    v14.size.height = v7.f32[3];
    v15 = CGRectUnion(v14, *&v6);
    height = v15.size.height;
    y = v15.origin.y;
    result = vcvt_hight_f32_f64(vcvt_f32_f64(v15.origin), v15.size);
    *(a1 + 20) = result;
  }

  return result;
}

id PXGShaderFlagsDescription(int a1)
{
  if (PXGShaderFlagsDescription_onceToken != -1)
  {
    dispatch_once(&PXGShaderFlagsDescription_onceToken, &__block_literal_global_330);
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = PXGShaderFlagsDescription_descriptionByBit;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __PXGShaderFlagsDescription_block_invoke_418;
  v9[3] = &unk_2782A9BC8;
  v11 = a1;
  v10 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 componentsJoinedByString:{@", "}];
  v7 = [v5 stringWithFormat:@"[%@]", v6];

  return v7;
}

void __PXGShaderFlagsDescription_block_invoke_418(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 40);
  v6 = [a2 integerValue];
  v7 = v5 & v6;
  if ((v5 & v6) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v11];
    }

    else
    {
      v8 = MEMORY[0x21CEE40A0](v11);
      v9 = *(a1 + 32);
      v10 = v8[2](v8, v7);
      [v9 addObject:v10];
    }
  }
}

void __PXGShaderFlagsDescription_block_invoke()
{
  v3[17] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_282C7F448;
  v2[1] = &unk_282C7F460;
  v3[0] = @"ARGBtoRGBA";
  v3[1] = @"ABGRtoBGRA";
  v2[2] = &unk_282C7F478;
  v2[3] = &unk_282C7F490;
  v3[2] = @"RtoGray";
  v3[3] = @"RGtoGrayA";
  v2[4] = &unk_282C7F4A8;
  v2[5] = &unk_282C7F4C0;
  v3[4] = &__block_literal_global_355;
  v3[5] = &__block_literal_global_360;
  v2[6] = &unk_282C7F4D8;
  v2[7] = &unk_282C7F4F0;
  v3[6] = @"RoundedCorners";
  v3[7] = @"InvertColors";
  v2[8] = &unk_282C7F508;
  v2[9] = &unk_282C7F520;
  v3[8] = @"EffectShader";
  v3[9] = @"DebugXR";
  v2[10] = &unk_282C7F538;
  v2[11] = &unk_282C7F550;
  v3[10] = @"DebugIsOpaque";
  v3[11] = @"DebugIsNotOpaque";
  v2[12] = &unk_282C7F568;
  v2[13] = &unk_282C7F580;
  v3[12] = @"DebugResolution";
  v3[13] = @"DebugColorTransform";
  v2[14] = &unk_282C7F598;
  v2[15] = &unk_282C7F5B0;
  v3[14] = @"FragmentClipping";
  v3[15] = @"ViewportRoundedCorners";
  v2[16] = &unk_282C7F5C8;
  v3[16] = @"DebugMipmaps";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:17];
  v1 = PXGShaderFlagsDescription_descriptionByBit;
  PXGShaderFlagsDescription_descriptionByBit = v0;
}

__CFString *PXGYCbCrBitDepthDescription(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXGYCbCr_Bit_Depth_Unknown(%d)", a1];
  }

  else
  {
    v2 = off_2782A9DB0[a1];
  }

  return v2;
}

__CFString *PXGYCbCrMatrixDescription(uint64_t a1)
{
  if (a1 >= 0xA)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PXGYCbCrMatrix_Unknown(%d)", a1];
  }

  else
  {
    v2 = off_2782A9D60[a1];
  }

  return v2;
}

unint64_t PXGShaderOpcodesAppending(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a3);
  appended = _appendOpcodes(a1, a3);
  v9 = _appendOpcodes(v6, v7);
  _appendOpcodes(a2, a4);
  return appended | (v9 << 32);
}

uint64_t _appendOpcodes(unsigned int a1, unsigned int a2)
{
  v4 = _opcodesCount(a1);
  v5 = _opcodesCount(a2) + v4;
  if (v5 >= 8)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint32_t _appendOpcodes(const uint32_t, const uint32_t)"}];
    [v8 handleFailureInFunction:v9 file:@"PXGTypes.m" lineNumber:644 description:{@"Invalid parameter not satisfying: %@", @"expectedOpcodesCount <= PXGOpcodeMax"}];
  }

  v6 = a2 << (4 * v4);
  if (v5 != _opcodesCount(v6 | a1))
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"uint32_t _appendOpcodes(const uint32_t, const uint32_t)"}];
    [v10 handleFailureInFunction:v11 file:@"PXGTypes.m" lineNumber:646 description:{@"Unexpected opcodes count %ld != %ld", v5, _opcodesCount(v6 | a1)}];
  }

  return v6 | a1;
}

uint64_t _opcodesCount(unsigned int a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  do
  {
    if (((a1 >> v2) & 0xF) != 0)
    {
      if (v4)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSInteger _opcodesCount(uint32_t)"];
        [v7 handleFailureInFunction:v5 file:@"PXGTypes.m" lineNumber:628 description:@"Opcodes cannot have holes"];
      }

      ++v3;
    }

    else
    {
      v4 = v3 > 0;
    }

    v2 += 4;
  }

  while (v2 != 28);
  return v3;
}

id PXGShaderOpcodesDescription(unint64_t a1, unsigned int a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 28; i += 4)
  {
    v9 = (v3 >> i) & 0xF;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGTextureCoordinateOpcodeDescription(enum PXGTextureCoordinateOpcode)"];
          v23 = v21;
          v24 = v22;
          v25 = 667;
        }

        else
        {
LABEL_38:
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGTextureCoordinateOpcodeDescription(enum PXGTextureCoordinateOpcode)"];
          v23 = v21;
          v24 = v22;
          v25 = 669;
        }

        goto LABEL_43;
      }

      v10 = @"Pinch";
    }

    else if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_38;
      }

      v10 = @"EdgeStretch";
    }

    else
    {
      v10 = 0;
    }

    [v5 px_addObjectIfNotNil:v10];
    v11 = (v4 >> i) & 0xF;
    if (v11 <= 2)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v12 = @"ColorGrading";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_42;
          }

          v12 = @"ColorTint";
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else if (((v4 >> i) & 0xF) > 4)
    {
      if (v11 != 5)
      {
        if (v11 == 6)
        {
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGFragmentColorOpcodeDescription(enum PXGFragmentColorOpcode)"];
          v23 = v21;
          v24 = v22;
          v25 = 687;
        }

        else
        {
LABEL_42:
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGFragmentColorOpcodeDescription(enum PXGFragmentColorOpcode)"];
          v23 = v21;
          v24 = v22;
          v25 = 689;
        }

        goto LABEL_43;
      }

      v12 = @"TextLegibilityColorMatrix";
    }

    else if (v11 == 3)
    {
      v12 = @"TextLegibilityNormal";
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_42;
      }

      v12 = @"TextLegibilityDarkenSourceOver";
    }

    [v6 px_addObjectIfNotNil:v12];
    v13 = (a2 >> i) & 0xF;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = @"EdgeFade";
        goto LABEL_30;
      }

      if (v13 == 3)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGFragmentAlphaOpcodeDescription(enum PXGFragmentAlphaOpcode)"];
        v23 = v21;
        v24 = v22;
        v25 = 701;
      }

      else
      {
LABEL_39:
        v21 = [MEMORY[0x277CCA890] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *PXGFragmentAlphaOpcodeDescription(enum PXGFragmentAlphaOpcode)"];
        v23 = v21;
        v24 = v22;
        v25 = 703;
      }

LABEL_43:
      [v23 handleFailureInFunction:v24 file:@"PXGTypes.m" lineNumber:v25 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_39;
      }

      v14 = @"RegionMask";
    }

    else
    {
      v14 = 0;
    }

LABEL_30:
    [v7 px_addObjectIfNotNil:v14];
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [v5 componentsJoinedByString:{@", "}];
  v17 = [v6 componentsJoinedByString:{@", "}];
  v18 = [v7 componentsJoinedByString:{@", "}];
  v19 = [v15 stringWithFormat:@"{ .textureCoordinate = [%@], .color = [%@], .alpha = [%@] }", v16, v17, v18];

  return v19;
}

uint64_t PXGYCbCrMatrixIsVideoRange(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  v3 = a1;
  result = 1;
  if (((1 << v3) & 0x155) != 0)
  {
    return 0;
  }

  if (((1 << v3) & 0xAA) == 0)
  {
    v7 = v1;
    v8 = v2;
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "Invalid to ask for IsVideoRange for PXGYCbCr_Count", v6, 2u);
    }

    return 0;
  }

  return result;
}

__CFString *PXGDiagnosticsSpriteProbeEventTypeDescription(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"??";
  }

  else
  {
    return off_2782A9E58[a1];
  }
}

uint64_t _createResizableShadowImage(void *a1)
{
  v4 = a1;
  v1 = v4;
  v2 = PXCreateCGImageWithDrawBlock();

  return v2;
}

void ___createResizableShadowImage_block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) shadowColor];
  v15 = [v14 CGColor];

  [*(a1 + 32) shadowBlurRadius];
  v17 = v16 * *(a1 + 56);
  v23.width = v12;
  v23.height = v13;
  CGContextSetShadowWithColor(a2, v23, v17, v15);
  [*(a1 + 32) shadowBlurRadius];
  v19 = (v18 + v18) * *(a1 + 56);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v25 = CGRectInset(v24, v19, v19);
  v21 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v25.origin.x - v12 cornerRadius:{v25.origin.y - v13, v25.size.width, v25.size.height, *(a1 + 64) * *(a1 + 56)}];
  v20 = v21;
  CGContextAddPath(a2, [v21 CGPath]);
  CGContextSetRGBFillColor(a2, 1.0, 1.0, 1.0, 1.0);
  CGContextFillPath(a2);
}

uint64_t PXGCreateResizableShadowImage(void *a1, void *a2)
{
  v3 = a1;
  [v3 shadowBlurRadius];
  PXSizeScale();
  [v3 shadowBlurRadius];
  PXEdgeInsetsMake();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  ResizableShadowImage = _createResizableShadowImage(v3);

  return ResizableShadowImage;
}

double PXGResizableShadowImageFrameForCastingFrame(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  [v9 shadowBlurRadius];
  v11 = v10;
  [v9 shadowOffset];
  v13 = v12;
  v15 = v14;

  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v19 = CGRectInset(v18, v11 * -2.0, v11 * -2.0);

  *&result = CGRectOffset(v19, v13, v15);
  return result;
}

float32x2_t PXGConfigureShadowSprite(float32x2_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a5;
  v18 = a4;
  v19 = +[PXTungstenSettings sharedInstance];
  [v19 maxCornerRadius];
  v21 = v20;

  [v18 shadowBlurRadius];
  *&v21 = ceil(v21 * 1.528665) + v22 + v22;
  v37.origin.x = PXGResizableShadowImageFrameForCastingFrame(v18, a6, a7, a8, a9);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  MidX = CGRectGetMidX(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MidY = CGRectGetMidY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v36 = CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v29 = CGRectGetHeight(v40);
  v30.f64[0] = v36;
  v30.f64[1] = v29;
  *a1 = MidX;
  *&a1[1] = MidY;
  a1[2] = 0;
  a1[3] = vcvt_f32_f64(v30);
  *a2 = PXGSpriteStyleDefault;
  *(a2 + 16) = unk_21AE2E270;
  *(a2 + 64) = xmmword_21AE2E2A0;
  *(a2 + 80) = unk_21AE2E2B0;
  *(a2 + 32) = xmmword_21AE2E280;
  *(a2 + 48) = unk_21AE2E290;
  *(a2 + 128) = xmmword_21AE2E2E0;
  *(a2 + 144) = unk_21AE2E2F0;
  *(a2 + 96) = xmmword_21AE2E2C0;
  *(a2 + 112) = unk_21AE2E2D0;
  LODWORD(v31) = LODWORD(v21);
  LODWORD(v32) = LODWORD(v21);
  *(a2 + 68) = [v17 addResizableCapInsets:{COERCE_DOUBLE(__PAIR64__(unk_21AE2E2D4, LODWORD(v21))), COERCE_DOUBLE(LODWORD(v21)), v31, v32}];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 1) = 7;
  *(a3 + 34) = 2;
  [v17 displayScale];

  [v18 shadowBlurRadius];
  PXSizeScale();
  v34.f64[1] = v33;
  result = vcvt_f32_f64(v34);
  *(a3 + 8) = result;
  return result;
}

unint64_t _DecorationIndexForType(unint64_t result)
{
  if (result > 8)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXGDecorationIndex _DecorationIndexForType(PXGDecoratingLayoutSpriteType)"];
    [v5 handleFailureInFunction:v6 file:@"PXGDecoratingLayout.m" lineNumber:129 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return result;
}

void sub_21ADC6F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADC7778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21ADC878C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADC9CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADCC92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADCFF70(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21ADD1D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PXGTextSpriteAttributesCreateFromSprite(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24[6] = xmmword_21AE2E2C0;
  v24[7] = unk_21AE2E2D0;
  v24[8] = xmmword_21AE2E2E0;
  v24[9] = unk_21AE2E2F0;
  v24[2] = xmmword_21AE2E280;
  v24[3] = unk_21AE2E290;
  v24[4] = xmmword_21AE2E2A0;
  v24[5] = unk_21AE2E2B0;
  v24[0] = PXGSpriteStyleDefault;
  v24[1] = unk_21AE2E270;
  v21 = 0;
  v5 = a1;
  v19 = 0u;
  v20 = 0u;
  v6 = a2;
  [v6 copyLayoutForSpritesInRange:v5 | 0x100000000 entities:&v23 geometries:v22 styles:v24 infos:&v19];
  PXRectWithCenterAndSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 contentSource];
  v16 = [v15 stringAtIndex:a1 inLayout:v6];
  v17 = [v15 stringAttributesAtIndex:a1 inLayout:v6];
  v18 = [v15 verticalAlignmentForStringAtIndex:a1 inLayout:v6];

  PXGTextSpriteAttributesCreateFromStringSourceValues(v17, v18, a3, v8, v10, v12, v14);
}

void PXGTextSpriteAttributesCreateFromStringSourceValues(void *a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v28 = a1;
  v13 = [v28 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  [v13 ascender];
  v15 = v14;
  [v13 descender];
  v17 = v15 - v16;
  if (!a2)
  {
    v32.origin.x = a4;
    v32.origin.y = a5;
    v32.size.width = a6;
    v32.size.height = a7;
    MinY = CGRectGetMidY(v32) + v17 * -0.5;
LABEL_7:
    [v13 ascender];
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    v18 = 0.0;
    if (a2 != 2)
    {
      goto LABEL_9;
    }

    v30.origin.x = a4;
    v30.origin.y = a5;
    v30.size.width = a6;
    v30.size.height = a7;
    MinY = CGRectGetMinY(v30);
    goto LABEL_7;
  }

  v31.origin.x = a4;
  v31.origin.y = a5;
  v31.size.width = a6;
  v31.size.height = a7;
  MinY = CGRectGetMaxY(v31);
  [v13 descender];
LABEL_8:
  v18 = MinY + v20;
LABEL_9:
  v21 = [v28 objectForKeyedSubscript:*MEMORY[0x277D74118]];
  v22 = [v21 alignment];
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  if (v22 == 1)
  {
    MidX = CGRectGetMidX(*&v23);
  }

  else if (v22 == 2)
  {
    MidX = CGRectGetMaxX(*&v23);
  }

  else
  {
    MidX = CGRectGetMinX(*&v23);
  }

  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  a3[4] = v18;
  a3[5] = v17;
  a3[6] = MidX;
  a3[7] = v18;
}

__n128 PXGTextSpriteAttributesOffset@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  *a1 = CGRectOffset(*a1, a3, a4);
  *(a1 + 32) = a4 + *(a1 + 32);
  PXPointAdd();
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

void sub_21ADD58DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADD5A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADD622C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21ADDCB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADDCD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADDDFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_21ADDE54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14725(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADDE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADDE8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE015C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 160), 8);
  _Block_object_dispose((v10 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_21ADE04D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE09C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE1578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21ADE30CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE3FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE6CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADE6E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PXGLayoutAppearStateDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Appearing";
  }

  else
  {
    return off_2782AADF0[a1 - 1];
  }
}

id PXGRegionOfInterestForSprite(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x277D3CD98];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = vmul_n_f32(*(a1 + 24), *(a2 + 60));
  v10 = vmul_f32(v9, 0x3F0000003F000000);
  v11 = [v8 initWithRect:v7 inCoordinateSpace:{*a1 - v10.f32[0], *(a1 + 8) - v10.f32[1], v9.f32[0], v9.f32[1]}];

  [v11 setImageContentsRect:{COERCE_FLOAT(*(a2 + 4)), COERCE_FLOAT(HIDWORD(*(a2 + 4))), COERCE_FLOAT(*(a2 + 12)), COERCE_FLOAT(HIDWORD(*(a2 + 4)))}];
  v12 = objc_alloc_init(MEMORY[0x277D3CE48]);
  [v12 setCornerRadius:{fmaxf(fmaxf(*(a2 + 36), *(a2 + 40)), fmaxf(*(a2 + 44), *(a2 + 48)))}];
  [v12 setCornerCurve:*MEMORY[0x277CDA138]];
  v13 = *(a2 + 36);
  v14 = v13 > 0.0;
  v15 = 2;
  if (v13 > 0.0)
  {
    v15 = 3;
  }

  if (*(a2 + 40) > 0.0)
  {
    v14 = v15;
  }

  if (*(a2 + 44) > 0.0)
  {
    v14 |= 4uLL;
  }

  if (*(a2 + 48) <= 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 | 8;
  }

  [v12 setCornerMask:v16];
  [v12 setRotationAngle:*(a2 + 56)];
  [v11 setImageViewSpec:v12];

  return v11;
}

id PXGAXCreateSelectionChangeUserInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:@"toInfo"];
  }

  return v3;
}

void sub_21ADEB9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15583(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PXGAXCreateFocusChangeUserInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKeyedSubscript:@"fromInfo"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"toInfo"];
  }

  return v6;
}

void PXGAXGetFocusFromAndToInfosForUserInfo(void *a1, void *a2, void *a3)
{
  v11 = a1;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXGetFocusFromAndToInfosForUserInfo(__strong id _Nonnull, __autoreleasing id<PXGAXInfo> * _Nullable, __autoreleasing id<PXGAXInfo> * _Nullable)"}];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v11 px_descriptionForAssertionMessage];
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v8, v10}];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXGetFocusFromAndToInfosForUserInfo(__strong id _Nonnull, __autoreleasing id<PXGAXInfo> * _Nullable, __autoreleasing id<PXGAXInfo> * _Nullable)"}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:918 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v8}];
  }

  if (a2)
  {
LABEL_4:
    *a2 = [v11 objectForKeyedSubscript:@"fromInfo"];
  }

LABEL_5:
  if (a3)
  {
    *a3 = [v11 objectForKeyedSubscript:@"toInfo"];
  }
}

void PXGAXAddSimpleIndexPathGroupChangeUserInfo(void *a1, void *a2, void *a3, void *a4)
{
  v16 = a1;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddSimpleIndexPathGroupChangeUserInfo(__strong id _Nonnull, PXDataSourceIdentifier * _Nullable, NSInteger * _Nullable, NSInteger * _Nullable)"}];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v16 px_descriptionForAssertionMessage];
    [v10 handleFailureInFunction:v11 file:@"PXGAXGroup.m" lineNumber:928 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v13, v15}];
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddSimpleIndexPathGroupChangeUserInfo(__strong id _Nonnull, PXDataSourceIdentifier * _Nullable, NSInteger * _Nullable, NSInteger * _Nullable)"}];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v10 handleFailureInFunction:v11 file:@"PXGAXGroup.m" lineNumber:928 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v13}];
  }

LABEL_3:
  if (a2)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:*a2];
    [v16 setObject:v7 forKeyedSubscript:@"toDataSourceIdentifier"];
  }

  if (a3)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:*a3];
    [v16 setObject:v8 forKeyedSubscript:@"toSection"];
  }

  if (a4)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*a4];
    [v16 setObject:v9 forKeyedSubscript:@"toItem"];
  }
}

void PXGAXGetToSimpleIndexPathForUserInfo(void *a1@<X0>, void *a2@<X8>)
{
  v30 = a1;
  if (!v30)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXSimpleIndexPath PXGAXGetToSimpleIndexPathForUserInfo(__strong id _Nonnull)"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v9 handleFailureInFunction:v10 file:@"PXGAXGroup.m" lineNumber:941 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v12}];
LABEL_19:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXSimpleIndexPath PXGAXGetToSimpleIndexPathForUserInfo(__strong id _Nonnull)"];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v30 px_descriptionForAssertionMessage];
    [v9 handleFailureInFunction:v10 file:@"PXGAXGroup.m" lineNumber:941 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v12, v14}];

    goto LABEL_19;
  }

LABEL_3:
  v3 = [v30 objectForKeyedSubscript:@"toDataSourceIdentifier"];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXSimpleIndexPath PXGAXGetToSimpleIndexPathForUserInfo(__strong id _Nonnull)"];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v3 px_descriptionForAssertionMessage];
      [v15 handleFailureInFunction:v16 file:@"PXGAXGroup.m" lineNumber:942 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userDictionary[_ChangeToDataSourceIdentifierKey]", v18, v19}];
    }
  }

  v4 = [v3 unsignedIntValue];
  v5 = [v30 objectForKeyedSubscript:@"toSection"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXSimpleIndexPath PXGAXGetToSimpleIndexPathForUserInfo(__strong id _Nonnull)"];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v5 px_descriptionForAssertionMessage];
      [v20 handleFailureInFunction:v21 file:@"PXGAXGroup.m" lineNumber:944 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userDictionary[_ChangeToSectionKey]", v23, v24}];
    }
  }

  v6 = [v5 intValue];

  v7 = [v30 objectForKeyedSubscript:@"toItem"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXSimpleIndexPath PXGAXGetToSimpleIndexPathForUserInfo(__strong id _Nonnull)"];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v7 px_descriptionForAssertionMessage];
      [v25 handleFailureInFunction:v26 file:@"PXGAXGroup.m" lineNumber:948 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"itemValue", v28, v29}];
    }

    v8 = [v7 intValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = 0x7FFFFFFFFFFFFFFFLL;
}

void PXGAXAddItemGeometryGroupChangeUserInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = v3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddItemGeometryGroupChangeUserInfo(__strong id _Nonnull, __strong id<PXGItemsGeometry> _Nonnull)"}];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v11 px_descriptionForAssertionMessage];
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:957 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v8, v10}];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddItemGeometryGroupChangeUserInfo(__strong id _Nonnull, __strong id<PXGItemsGeometry> _Nonnull)"}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:957 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v8}];
  }

  if (v4)
  {
LABEL_4:
    [v11 setObject:v4 forKeyedSubscript:@"itemGeometry"];
  }

LABEL_5:
}

id PXGAXGetItemGeometryForUserInfo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<PXGItemsGeometry>  _Nonnull PXGAXGetItemGeometryForUserInfo(__strong id _Nonnull)"];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = [v1 px_descriptionForAssertionMessage];
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:964 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v7, v9}];
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<PXGItemsGeometry>  _Nonnull PXGAXGetItemGeometryForUserInfo(__strong id _Nonnull)"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:964 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v7}];
  }

LABEL_3:
  v2 = [v1 objectForKeyedSubscript:@"itemGeometry"];

  return v2;
}

id PXGAXCreateActionUserInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:@"toElement"];
  }

  return v3;
}

id PXGAXGetElementForUserInfo(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<PXGAXElement>  _Nonnull PXGAXGetElementForUserInfo(__strong id _Nonnull)"];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = [v1 px_descriptionForAssertionMessage];
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v7, v9}];
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<PXGAXElement>  _Nonnull PXGAXGetElementForUserInfo(__strong id _Nonnull)"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v7}];
  }

LABEL_3:
  v2 = [v1 objectForKeyedSubscript:@"toElement"];

  return v2;
}

void PXGAXAddAssetCollectionReferenceUserInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = v3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddAssetCollectionReferenceUserInfo(__strong id _Nonnull, PXAssetCollectionReference *__strong _Nonnull)"}];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v11 px_descriptionForAssertionMessage];
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:984 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v8, v10}];
  }

  else
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXAddAssetCollectionReferenceUserInfo(__strong id _Nonnull, PXAssetCollectionReference *__strong _Nonnull)"}];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 handleFailureInFunction:v6 file:@"PXGAXGroup.m" lineNumber:984 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v8}];
  }

  if (v4)
  {
LABEL_4:
    [v11 setObject:v4 forKeyedSubscript:@"toAssetCollectionReference"];
  }

LABEL_5:
}

id PXGAXGetToAssetCollectionReferenceForUserInfo(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXAssetCollectionReference * _Nullable PXGAXGetToAssetCollectionReferenceForUserInfo(__strong id _Nonnull)"];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:990 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v7}];
LABEL_11:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXAssetCollectionReference * _Nullable PXGAXGetToAssetCollectionReferenceForUserInfo(__strong id _Nonnull)"];
    v8 = objc_opt_class();
    v7 = NSStringFromClass(v8);
    v9 = [v1 px_descriptionForAssertionMessage];
    [v4 handleFailureInFunction:v5 file:@"PXGAXGroup.m" lineNumber:990 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v7, v9}];

    goto LABEL_11;
  }

LABEL_3:
  v2 = [v1 objectForKeyedSubscript:@"toAssetCollectionReference"];
  if (v2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXAssetCollectionReference * _Nullable PXGAXGetToAssetCollectionReferenceForUserInfo(__strong id _Nonnull)"];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v2 px_descriptionForAssertionMessage];
      [v10 handleFailureInFunction:v11 file:@"PXGAXGroup.m" lineNumber:991 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userDictionary[_ChangeToAssetCollectionReference]", v13, v14}];
    }
  }

  return v2;
}

void PXGAXGetSelectionFromAndToInfosForUserInfo(void *a1, void *a2)
{
  v9 = a1;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXGetSelectionFromAndToInfosForUserInfo(__strong id _Nonnull, __autoreleasing id<PXGAXInfo> * _Nullable)"}];
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [v9 px_descriptionForAssertionMessage];
    [v3 handleFailureInFunction:v4 file:@"PXGAXGroup.m" lineNumber:1004 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"userInfo", v6, v8}];
  }

  else
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void PXGAXGetSelectionFromAndToInfosForUserInfo(__strong id _Nonnull, __autoreleasing id<PXGAXInfo> * _Nullable)"}];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v3 handleFailureInFunction:v4 file:@"PXGAXGroup.m" lineNumber:1004 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"userInfo", v6}];
  }

  if (a2)
  {
LABEL_4:
    *a2 = [v9 objectForKeyedSubscript:@"toInfo"];
  }

LABEL_5:
}

__CFString *PXGAXGroupRoleDescription(unint64_t a1)
{
  if (a1 >= 5 || ((0x1Bu >> a1) & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull PXGAXGroupRoleDescription(PXGAXGroupRole)"];
    [v6 handleFailureInFunction:v7 file:@"PXGAXGroup.m" lineNumber:1023 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return off_2782AB208[a1];
}

double PXGAXElementResolvedFrameInContentCoordinateSpace(void *a1)
{
  v1 = a1;
  [v1 axFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v1 axParent];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = [v1 axContainingGroup];
  }

  v11 = v10;
  if (v10)
  {
    v12 = [v10 axRootParent];
    v13 = [v12 axGroupSource];
    [v13 axConvertRect:v11 fromDescendantGroup:{v3, v5, v7, v9}];
    v3 = v14;
  }

LABEL_7:

  return v3;
}

void sub_21ADF1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADF3364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADF34D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ADF3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16358(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADF38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21ADF3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXGSpriteInfoDescription(unsigned __int8 *a1)
{
  v2 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{"];
  if (*a1)
  {
    if (*a1 > 2u)
    {
      v3 = @"unexpected";
    }

    else
    {
      v3 = off_2782A9C58[*a1];
    }

    v4 = v3;
    [v2 appendFormat:@"presentationType=%@, ", v4];
  }

  if (a1[1])
  {
    if (a1[1] > 0xCu)
    {
      v5 = @"unexpected";
    }

    else
    {
      v5 = off_2782A9C70[a1[1]];
    }

    v6 = v5;
    [v2 appendFormat:@"mediaKind=%@, ", v6];
  }

  v7 = *(a1 + 1);
  if (*&v7 != 0.0 || *(&v7 + 1) != 0.0)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f}", *&v7, *(&v7 + 1)];
    [v2 appendFormat:@"mediaTargetSize=%@, ", v8];
  }

  v9 = *(a1 + 4);
  if (v9 != 0.0)
  {
    [v2 appendFormat:@"mediaAspectRatio=%.2f, ", v9];
  }

  if (*(a1 + 3))
  {
    [v2 appendFormat:@"tag:0x%llx (%d, %d, %d, %d), ", *(a1 + 3), BYTE1(*(a1 + 3)), *(a1 + 3), WORD1(*(a1 + 3)), HIDWORD(*(a1 + 3))];
  }

  if (*(a1 + 16))
  {
    [v2 appendFormat:@"mediaVersion=%d, ", *(a1 + 16)];
  }

  if (a1[34])
  {
    v10 = PXGSpriteInfoFlagsDescription(a1[34]);
    [v2 appendFormat:@"flags=%@, ", v10];
  }

  [v2 px_removeSuffix:{@", "}];
  [v2 appendString:@"}"];

  return v2;
}

void sub_21ADF6A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 216), 8);
  _Block_object_dispose((v40 - 168), 8);
  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16912(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ADF7504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17075(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AE016B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AE027F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double PXGBestCropRectForDisplayAsset(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = a1;
  v8 = v7;
  v9 = *MEMORY[0x277D3CFC0];
  v10 = fabs(a4) != INFINITY;
  if (v7 && v10 && [v7 pixelWidth] && objc_msgSend(v8, "pixelHeight") && (!a3 || (objc_opt_respondsToSelector() & 1) != 0))
  {
    [v8 bestCropRectForAspectRatioV2:0 verticalContentMode:a2 cropMode:a4];
    v9 = v11;
  }

  return v9;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_21AE0E27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_destroyWeak((v14 - 144));

  _Unwind_Resume(a1);
}

void sub_21AE10E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void -[PXGTextureManager _blockOnThumbnailsIfNeededWithGeometries:visibleRect:interactionState:fences:](PXGTextureManager *self, SEL a2, $C4327F77E24267CF92932F349E1559A2 *a3, CGRect a4, $28B10562A11C0018BB97DE3323169FD5 *a5, id a6)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v71 = *MEMORY[0x277D85DE8];
  v54 = a6;
  if ([(PXGTextureManager *)self isInactive])
  {
    goto LABEL_79;
  }

  v13 = +[PXTungstenSettings sharedInstance];
  v15 = [v13 allowBlockingDuringScrolling] && ((var0 = a5->var0, var0 >= objc_msgSend(v13, "blockOnMissingThumbnailsAtSpeedRegime")) || a5->var0 < 1 || a5->var2) && !a5->var3 && a5->var4 - 4 < 0xFFFFFFFFFFFFFFFDLL;
  var5 = a5->var5;
  var1 = a5->var1;
  var6 = a5->var6;
  v17 = 0.0;
  if ([v13 allowBlockingDueToFences])
  {
    v51 = var6;
    v50 = a3;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v18 = v54;
    v19 = [v18 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v19)
    {
      v48 = v15;
      v49 = self;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = *v67;
      v24 = 0.0;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v67 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v66 + 1) + 8 * i);
          [v26 timeout];
          if (v27 >= v24)
          {
            v24 = v27;
          }

          v28 = [v26 type];
          if (v28 > 1)
          {
            if (v28 == 3)
            {
              v29 = 1;
            }

            else
            {
              v29 = v20;
            }

            if (v28 == 3)
            {
              v30 = 1;
            }

            else
            {
              v30 = v22;
            }

            if (v28 == 2)
            {
              v20 = 1;
            }

            else
            {
              v20 = v29;
            }

            if (v28 != 2)
            {
              v22 = v30;
            }
          }

          else if (v28)
          {
            if (v28 == 1)
            {
              v21 = 1;
              v17 = 0.0333333333;
            }
          }

          else
          {
            v21 = 1;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v19);

      self = v49;
      var6 = v51;
      v15 = v48;
      a3 = v50;
      if (v24 != 0.0)
      {
        goto LABEL_53;
      }
    }

    else
    {

      var6 = v51;
      LOBYTE(v22) = 0;
      v21 = 0;
      v20 = 0;
      a3 = v50;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
    v21 = 0;
    v20 = 0;
  }

  if (a5->var6)
  {
    [v13 blockingWhileInitialLoadTimeout];
    goto LABEL_41;
  }

  if (v15)
  {
    if (a5->var2)
    {
      [v13 blockingWhileScrubbingTimeout];
    }

    else
    {
      [v13 blockingWhileScrollingTimeout];
    }

LABEL_41:
    if (v17 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v17;
    }

    if (v17 == 0.0)
    {
      v32 = v31;
    }

    if (v31 > 0.0)
    {
      v24 = v32;
    }

    else
    {
      v24 = v17;
    }

    goto LABEL_53;
  }

  v24 = v17;
LABEL_53:
  if (var1 || v15 || var5 || (v21 & 1) != 0 || (v20 & 1) != 0 || var6 || self->_didSwitchTextureConverter)
  {
    v33 = self->_loadedSpriteIndexes;
    streamInfoBySpriteIndex = self->_streamInfoBySpriteIndex;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke;
    v58[3] = &unk_2782AC0F8;
    v35 = v33;
    v59 = v35;
    v60 = streamInfoBySpriteIndex;
    v61 = a3;
    v62 = x;
    v63 = y;
    v64 = width;
    v65 = height;
    v36 = MEMORY[0x21CEE40A0](v58);
    v37 = v36;
    if (((v20 | var6) & 1) != 0 || (*(v36 + 16))(v36))
    {
      v38 = [(PXGTextureManager *)self delegate];
      v39 = [v38 textureManagerCanBlockMainThreadIfNeeded:self];

      if (v39)
      {
        [(NSIndexSet *)v35 count];
        kdebug_trace();
        requestQueue = self->_requestQueue;
        if (v24 <= 0.0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke_3;
          block[3] = &unk_2782ABE50;
          block[4] = self;
          dispatch_sync(requestQueue, block);
          if (v22)
          {
            dispatch_sync(self->_adjustQueue, &__block_literal_global_71);
          }

          v46 = self->_requestQueue;
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __98__PXGTextureManager__blockOnThumbnailsIfNeededWithGeometries_visibleRect_interactionState_fences___block_invoke_6;
          v55[3] = &unk_2782AC140;
          v56 = v20 & 1;
          v55[4] = self;
          dispatch_sync(v46, v55);
        }

        else
        {
          px_dispatch_queue_wait();
          v42 = v24 - v41;
          if (v24 - v41 > 0.0)
          {
            px_dispatch_queue_wait();
            v42 = v42 - v43;
          }

          if (((v42 > 0.0) & v22) == 1)
          {
            px_dispatch_queue_wait();
            v42 = v42 - v44;
          }

          if (v42 > 0.0)
          {
            px_dispatch_queue_wait();
            v42 = v42 - v45;
          }

          if (((v42 > 0.0) & v20) == 1)
          {
            px_dispatch_queue_wait();
          }
        }

        [(PXGTextureManager *)self _processTextureProviderResults];
        v47 = v37;
        if (kdebug_is_enabled())
        {
          v47[2](v47);
          kdebug_trace();
        }
      }
    }
  }

LABEL_79:
}

void sub_21AE13F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18859(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AE158A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_21AE15A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PXGTextureManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

unint64_t PXGSectionedSpriteTagDecompose(unint64_t result, unsigned __int8 a2, _BYTE *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = HIDWORD(result);
  if (HIDWORD(result) == 0xFFFFFFFF)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 == BYTE1(result))
  {
    v6 = WORD1(result);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a2 != BYTE1(result))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a3)
  {
    *a3 = result;
  }

  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v5;
  }

  return result;
}

__n128 PXGSectionedSpriteTagGetIndexPath@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 == BYTE1(a1))
  {
    *a3 = a2;
    a3[1] = WORD1(a1);
    if (HIDWORD(a1) == 0xFFFFFFFF)
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = HIDWORD(a1);
    }

    a3[2] = v3;
    a3[3] = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = *MEMORY[0x277D3CFD8];
    v5 = *(MEMORY[0x277D3CFD8] + 16);
    *a3 = *MEMORY[0x277D3CFD8];
    *(a3 + 1) = v5;
  }

  return result;
}

uint64_t PXUpdateSectionedSpriteInfoTagsForItemsInRange(uint64_t result, char a2, __int16 a3, int a4, uint64_t a5)
{
  if (a5)
  {
    v5 = (result + 28);
    do
    {
      *(v5 - 3) = a2;
      *v5 = a4++;
      *(v5 - 1) = a3;
      v5 += 10;
      --a5;
    }

    while (a5);
  }

  return result;
}

void sub_21AE18EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x3A8]);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4C8], 8);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x530], 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}