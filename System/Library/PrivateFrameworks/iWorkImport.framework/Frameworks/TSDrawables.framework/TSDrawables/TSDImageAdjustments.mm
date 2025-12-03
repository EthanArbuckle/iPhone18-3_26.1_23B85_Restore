@interface TSDImageAdjustments
- (BOOL)isEqual:(id)equal;
- (TSDImageAdjustments)imageAdjustmentsWithoutEnhance;
- (TSDImageAdjustments)init;
- (TSDImageAdjustments)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)description;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)hash;
- (void)i_initFromDefaultArchive;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDImageAdjustments

- (void)i_initFromDefaultArchive
{
  v3 = TSD::ImageAdjustmentsArchive::default_instance(self);
  TSD::ImageAdjustmentsArchive::ImageAdjustmentsArchive(v16, v3);
  TSPCGFloatFromFloat(v16[6]);
  self->_exposure = v4;
  TSPCGFloatFromFloat(v16[7]);
  self->_saturation = v5;
  TSPCGFloatFromFloat(v16[8]);
  self->_contrast = v6;
  TSPCGFloatFromFloat(v16[9]);
  self->_highlights = v7;
  TSPCGFloatFromFloat(v16[10]);
  self->_shadows = v8;
  TSPCGFloatFromFloat(v16[11]);
  self->_sharpness = v9;
  TSPCGFloatFromFloat(v16[12]);
  self->_denoise = v10;
  TSPCGFloatFromFloat(v16[13]);
  self->_temperature = v11;
  TSPCGFloatFromFloat(v16[14]);
  self->_tint = v12;
  TSPCGFloatFromFloat(v16[15]);
  self->_bottomLevel = v13;
  TSPCGFloatFromFloat(v16[18]);
  self->_topLevel = v14;
  TSPCGFloatFromFloat(v16[16]);
  self->_gamma = v15;
  TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v16);
}

- (TSDImageAdjustments)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v5 = objc_msgSend_init(self, a2, archive, unarchiver);
  if (v5)
  {
    v6 = *(archive + 4);
    if (v6)
    {
      TSPCGFloatFromFloat(*(archive + 6));
      *(v5 + 8) = v7;
      v6 = *(archive + 4);
    }

    if ((v6 & 2) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 7));
      *(v5 + 16) = v8;
      v6 = *(archive + 4);
    }

    if ((v6 & 4) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 8));
      *(v5 + 24) = v9;
      v6 = *(archive + 4);
    }

    if ((v6 & 8) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 9));
      *(v5 + 32) = v10;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x10) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 10));
      *(v5 + 40) = v11;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x20) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 11));
      *(v5 + 48) = v12;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x40) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 12));
      *(v5 + 56) = v13;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x80) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 13));
      *(v5 + 64) = v14;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x100) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 14));
      *(v5 + 72) = v15;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x200) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 15));
      *(v5 + 80) = v16;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x2000) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 18));
      *(v5 + 88) = v17;
      v6 = *(archive + 4);
    }

    if ((v6 & 0x400) != 0)
    {
      TSPCGFloatFromFloat(*(archive + 16));
      *(v5 + 96) = v18;
    }

    *(v5 + 104) = *(archive + 68);
    *(v5 + 105) = *(archive + 69);
  }

  return v5;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  exposure = self->_exposure;
  v7 = TSD::ImageAdjustmentsArchive::default_instance(self);
  if (exposure != v7[6])
  {
    v7 = TSPCGFloatToFloat(self->_exposure);
    *(archive + 4) |= 1u;
    *(archive + 6) = v8;
  }

  saturation = self->_saturation;
  v10 = TSD::ImageAdjustmentsArchive::default_instance(v7);
  if (saturation != v10[7])
  {
    v10 = TSPCGFloatToFloat(self->_saturation);
    *(archive + 4) |= 2u;
    *(archive + 7) = v11;
  }

  contrast = self->_contrast;
  v13 = TSD::ImageAdjustmentsArchive::default_instance(v10);
  if (contrast != v13[8])
  {
    v13 = TSPCGFloatToFloat(self->_contrast);
    *(archive + 4) |= 4u;
    *(archive + 8) = v14;
  }

  highlights = self->_highlights;
  v16 = TSD::ImageAdjustmentsArchive::default_instance(v13);
  if (highlights != v16[9])
  {
    v16 = TSPCGFloatToFloat(self->_highlights);
    *(archive + 4) |= 8u;
    *(archive + 9) = v17;
  }

  shadows = self->_shadows;
  v19 = TSD::ImageAdjustmentsArchive::default_instance(v16);
  if (shadows != v19[10])
  {
    v19 = TSPCGFloatToFloat(self->_shadows);
    *(archive + 4) |= 0x10u;
    *(archive + 10) = v20;
  }

  sharpness = self->_sharpness;
  v22 = TSD::ImageAdjustmentsArchive::default_instance(v19);
  if (sharpness != v22[11])
  {
    v22 = TSPCGFloatToFloat(self->_sharpness);
    *(archive + 4) |= 0x20u;
    *(archive + 11) = v23;
  }

  denoise = self->_denoise;
  v25 = TSD::ImageAdjustmentsArchive::default_instance(v22);
  if (denoise != v25[12])
  {
    v25 = TSPCGFloatToFloat(self->_denoise);
    *(archive + 4) |= 0x40u;
    *(archive + 12) = v26;
  }

  temperature = self->_temperature;
  v28 = TSD::ImageAdjustmentsArchive::default_instance(v25);
  if (temperature != v28[13])
  {
    v28 = TSPCGFloatToFloat(self->_temperature);
    *(archive + 4) |= 0x80u;
    *(archive + 13) = v29;
  }

  tint = self->_tint;
  v31 = TSD::ImageAdjustmentsArchive::default_instance(v28);
  if (tint != v31[14])
  {
    v31 = TSPCGFloatToFloat(self->_tint);
    *(archive + 4) |= 0x100u;
    *(archive + 14) = v32;
  }

  bottomLevel = self->_bottomLevel;
  v34 = TSD::ImageAdjustmentsArchive::default_instance(v31);
  if (bottomLevel != v34[15])
  {
    v34 = TSPCGFloatToFloat(self->_bottomLevel);
    *(archive + 4) |= 0x200u;
    *(archive + 15) = v35;
  }

  topLevel = self->_topLevel;
  v37 = TSD::ImageAdjustmentsArchive::default_instance(v34);
  if (topLevel != v37[18])
  {
    v37 = TSPCGFloatToFloat(self->_topLevel);
    *(archive + 4) |= 0x2000u;
    *(archive + 18) = v38;
  }

  gamma = self->_gamma;
  if (gamma == *(TSD::ImageAdjustmentsArchive::default_instance(v37) + 16))
  {
    v40 = *(archive + 4);
  }

  else
  {
    TSPCGFloatToFloat(self->_gamma);
    v40 = *(archive + 4) | 0x400;
    *(archive + 4) = v40;
    *(archive + 16) = v41;
  }

  *(archive + 68) = self->_enhance;
  representsSageAdjustments = self->_representsSageAdjustments;
  *(archive + 4) = v40 | 0x1800;
  *(archive + 69) = representsSageAdjustments;
}

- (TSDImageAdjustments)init
{
  v7.receiver = self;
  v7.super_class = TSDImageAdjustments;
  v2 = [(TSDImageAdjustments *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_i_initFromDefaultArchive(v2, v3, v4);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5 && ((exposure = self->_exposure, objc_msgSend_exposure(v5, v6, v7), exposure == v11) || vabdd_f64(exposure, v11) < 0.0001) && ((saturation = self->_saturation, objc_msgSend_saturation(v5, v9, v10), saturation == v15) || vabdd_f64(saturation, v15) < 0.0001) && ((contrast = self->_contrast, objc_msgSend_contrast(v5, v13, v14), contrast == v19) || vabdd_f64(contrast, v19) < 0.0001) && ((highlights = self->_highlights, objc_msgSend_highlights(v5, v17, v18), highlights == v23) || vabdd_f64(highlights, v23) < 0.0001) && ((shadows = self->_shadows, objc_msgSend_shadows(v5, v21, v22), shadows == v27) || vabdd_f64(shadows, v27) < 0.0001) && ((sharpness = self->_sharpness, objc_msgSend_sharpness(v5, v25, v26), sharpness == v31) || vabdd_f64(sharpness, v31) < 0.0001) && ((denoise = self->_denoise, objc_msgSend_denoise(v5, v29, v30), denoise == v35) || vabdd_f64(denoise, v35) < 0.0001) && ((temperature = self->_temperature, objc_msgSend_temperature(v5, v33, v34), temperature == v39) || vabdd_f64(temperature, v39) < 0.0001) && ((tint = self->_tint, objc_msgSend_tint(v5, v37, v38), tint == v43) || vabdd_f64(tint, v43) < 0.0001) && ((bottomLevel = self->_bottomLevel, objc_msgSend_bottomLevel(v5, v41, v42), bottomLevel == v47) || vabdd_f64(bottomLevel, v47) < 0.0001) && ((topLevel = self->_topLevel, objc_msgSend_topLevel(v5, v45, v46), topLevel == v51) || vabdd_f64(topLevel, v51) < 0.0001) && ((gamma = self->_gamma, objc_msgSend_gamma(v5, v49, v50), gamma == v55) || vabdd_f64(gamma, v55) < 0.0001) && (enhance = self->_enhance, enhance == objc_msgSend_enhance(v5, v53, v54)))
  {
    representsSageAdjustments = self->_representsSageAdjustments;
    v60 = representsSageAdjustments == objc_msgSend_representsSageAdjustments(v5, v57, v58);
  }

  else
  {
    v60 = 0;
  }

  return v60;
}

- (unint64_t)hash
{
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  return TSUHashWithSeed();
}

- (id)description
{
  v3 = objc_msgSend_descriptionWithObject_(MEMORY[0x277D811A8], a2, self);
  objc_msgSend_addField_format_(v3, v4, @"exposure", @"%f", *&self->_exposure);
  objc_msgSend_addField_format_(v3, v5, @"saturation", @"%f", *&self->_saturation);
  objc_msgSend_addField_format_(v3, v6, @"contrast", @"%f", *&self->_contrast);
  objc_msgSend_addField_format_(v3, v7, @"highlights", @"%f", *&self->_highlights);
  objc_msgSend_addField_format_(v3, v8, @"shadows", @"%f", *&self->_shadows);
  objc_msgSend_addField_format_(v3, v9, @"sharpness", @"%f", *&self->_sharpness);
  objc_msgSend_addField_format_(v3, v10, @"denoise", @"%f", *&self->_denoise);
  objc_msgSend_addField_format_(v3, v11, @"temperature", @"%f", *&self->_temperature);
  objc_msgSend_addField_format_(v3, v12, @"tint", @"%f", *&self->_tint);
  objc_msgSend_addField_format_(v3, v13, @"bottomLevel", @"%f", *&self->_bottomLevel);
  objc_msgSend_addField_format_(v3, v14, @"topLevel", @"%f", *&self->_topLevel);
  objc_msgSend_addField_format_(v3, v15, @"gamma", @"%f", *&self->_gamma);
  if (objc_msgSend_enhance(self, v16, v17))
  {
    objc_msgSend_addField_format_(v3, v18, @"enhance", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v3, v18, @"enhance", @"%@", @"NO");
  }

  if (objc_msgSend_representsSageAdjustments(self, v19, v20))
  {
    objc_msgSend_addField_format_(v3, v21, @"representsSageAdjustments", @"%@", @"YES");
  }

  else
  {
    objc_msgSend_addField_format_(v3, v21, @"representsSageAdjustments", @"%@", @"NO");
  }

  v24 = objc_msgSend_descriptionString(v3, v22, v23);

  return v24;
}

- (TSDImageAdjustments)imageAdjustmentsWithoutEnhance
{
  if (objc_msgSend_enhance(self, a2, v2))
  {
    v6 = objc_msgSend_mutableCopy(self, v4, v5);
    objc_msgSend_setEnhance_(v6, v7, 0);
  }

  else
  {
    v6 = objc_msgSend_copy(self, v4, v5);
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(TSDMutableImageAdjustments);
  *(result + 1) = *&self->_exposure;
  *(result + 2) = *&self->_saturation;
  *(result + 3) = *&self->_contrast;
  *(result + 4) = *&self->_highlights;
  *(result + 5) = *&self->_shadows;
  *(result + 6) = *&self->_sharpness;
  *(result + 7) = *&self->_denoise;
  *(result + 8) = *&self->_temperature;
  *(result + 9) = *&self->_tint;
  *(result + 10) = *&self->_bottomLevel;
  *(result + 11) = *&self->_topLevel;
  *(result + 12) = *&self->_gamma;
  *(result + 104) = self->_enhance;
  *(result + 105) = self->_representsSageAdjustments;
  return result;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  v6 = objectCopy;
  if (objectCopy)
  {
    v7 = objectCopy;
    exposure = self->_exposure;
    objc_msgSend_exposure(v7, v9, v10);
    if ((exposure == v13 || vabdd_f64(exposure, v13) < 0.01) && ((saturation = self->_saturation, objc_msgSend_saturation(v7, v11, v12), saturation == v17) || vabdd_f64(saturation, v17) < 0.01) && ((contrast = self->_contrast, objc_msgSend_contrast(v7, v15, v16), contrast == v21) || vabdd_f64(contrast, v21) < 0.01) && ((highlights = self->_highlights, objc_msgSend_highlights(v7, v19, v20), highlights == v25) || vabdd_f64(highlights, v25) < 0.01) && ((shadows = self->_shadows, objc_msgSend_shadows(v7, v23, v24), shadows == v29) || vabdd_f64(shadows, v29) < 0.01) && ((sharpness = self->_sharpness, objc_msgSend_sharpness(v7, v27, v28), sharpness == v33) || vabdd_f64(sharpness, v33) < 0.01) && ((denoise = self->_denoise, objc_msgSend_denoise(v7, v31, v32), denoise == v37) || vabdd_f64(denoise, v37) < 0.01) && ((temperature = self->_temperature, objc_msgSend_temperature(v7, v35, v36), temperature == v41) || vabdd_f64(temperature, v41) < 0.01) && ((tint = self->_tint, objc_msgSend_tint(v7, v39, v40), tint == v45) || vabdd_f64(tint, v45) < 0.01) && ((bottomLevel = self->_bottomLevel, objc_msgSend_bottomLevel(v7, v43, v44), bottomLevel == v49) || vabdd_f64(bottomLevel, v49) < 0.01) && ((topLevel = self->_topLevel, objc_msgSend_topLevel(v7, v47, v48), topLevel == v53) || vabdd_f64(topLevel, v53) < 0.01))
    {
      gamma = self->_gamma;
      objc_msgSend_gamma(v7, v51, v52);
      if (vabdd_f64(gamma, v57) < 0.01 || gamma == v57)
      {
        v54 = 5;
      }

      else
      {
        v54 = 2;
      }
    }

    else
    {
      v54 = 2;
    }
  }

  else
  {
    v54 = 2;
  }

  return v54;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  v7 = objc_alloc_init(TSDMutableImageAdjustments);
  objc_msgSend_exposure(self, v8, v9);
  objc_msgSend_exposure(objectCopy, v10, v11);
  TSUMixFloats();
  objc_msgSend_setExposure_(v7, v12, v13);
  objc_msgSend_saturation(self, v14, v15);
  objc_msgSend_saturation(objectCopy, v16, v17);
  TSUMixFloats();
  objc_msgSend_setSaturation_(v7, v18, v19);
  objc_msgSend_contrast(self, v20, v21);
  objc_msgSend_contrast(objectCopy, v22, v23);
  TSUMixFloats();
  objc_msgSend_setContrast_(v7, v24, v25);
  objc_msgSend_highlights(self, v26, v27);
  objc_msgSend_highlights(objectCopy, v28, v29);
  TSUMixFloats();
  objc_msgSend_setHighlights_(v7, v30, v31);
  objc_msgSend_shadows(self, v32, v33);
  objc_msgSend_shadows(objectCopy, v34, v35);
  TSUMixFloats();
  objc_msgSend_setShadows_(v7, v36, v37);
  objc_msgSend_sharpness(self, v38, v39);
  objc_msgSend_sharpness(objectCopy, v40, v41);
  TSUMixFloats();
  objc_msgSend_setSharpness_(v7, v42, v43);
  objc_msgSend_denoise(self, v44, v45);
  objc_msgSend_denoise(objectCopy, v46, v47);
  TSUMixFloats();
  objc_msgSend_setDenoise_(v7, v48, v49);
  objc_msgSend_temperature(self, v50, v51);
  objc_msgSend_temperature(objectCopy, v52, v53);
  TSUMixFloats();
  objc_msgSend_setTemperature_(v7, v54, v55);
  objc_msgSend_tint(self, v56, v57);
  objc_msgSend_tint(objectCopy, v58, v59);
  TSUMixFloats();
  objc_msgSend_setTint_(v7, v60, v61);
  objc_msgSend_bottomLevel(self, v62, v63);
  objc_msgSend_bottomLevel(objectCopy, v64, v65);
  TSUMixFloats();
  objc_msgSend_setBottomLevel_(v7, v66, v67);
  objc_msgSend_topLevel(self, v68, v69);
  objc_msgSend_topLevel(objectCopy, v70, v71);
  TSUMixFloats();
  objc_msgSend_setTopLevel_(v7, v72, v73);
  objc_msgSend_gamma(self, v74, v75);
  objc_msgSend_gamma(objectCopy, v76, v77);
  TSUMixFloats();
  objc_msgSend_setGamma_(v7, v78, v79);
  if (fraction >= 0.5)
  {
    v82 = objc_msgSend_enhance(objectCopy, v80, v81);
  }

  else
  {
    v82 = objc_msgSend_enhance(self, v80, v81);
  }

  objc_msgSend_setEnhance_(v7, v83, v82);

  return v7;
}

@end