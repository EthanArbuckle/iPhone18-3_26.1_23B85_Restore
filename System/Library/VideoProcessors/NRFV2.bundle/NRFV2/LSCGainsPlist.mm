@interface LSCGainsPlist
- (LSCGainsPlist)initWithDictionary:(id)dictionary metal:(id)metal;
- (id)getTextureMaxValueForPortType:(id)type;
- (int)fillLSCGainsTextureFrom:(id *)from tex:(id)tex maxValuesRGBA:(float *)a;
@end

@implementation LSCGainsPlist

- (LSCGainsPlist)initWithDictionary:(id)dictionary metal:(id)metal
{
  dictionaryCopy = dictionary;
  metalCopy = metal;
  v87.receiver = self;
  v87.super_class = LSCGainsPlist;
  v7 = [(LSCGainsPlist *)&v87 init];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = objc_alloc(MEMORY[0x29EDB8E00]);
  v12 = objc_msgSend_count(dictionaryCopy, v9, v10, v11);
  v15 = objc_msgSend_initWithCapacity_(v8, v13, v12, v14);
  lscGainsByPortType = v7->_lscGainsByPortType;
  v7->_lscGainsByPortType = v15;

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v73 = dictionaryCopy;
  v17 = dictionaryCopy;
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v83, v82, 16);
  if (!v77)
  {
LABEL_13:

    dictionaryCopy = v73;
LABEL_14:
    v70 = v7;
    goto LABEL_15;
  }

  v76 = *v84;
  v75 = *MEMORY[0x29EDBFF10];
LABEL_4:
  v21 = 0;
  while (1)
  {
    if (*v84 != v76)
    {
      objc_enumerationMutation(v17);
    }

    v22 = *(*(&v83 + 1) + 8 * v21);
    v23 = objc_msgSend_objectForKeyedSubscript_(v17, v19, v22, v20);
    v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, v75, v25);

    if (v26)
    {
      break;
    }

LABEL_11:

    if (v77 == ++v21)
    {
      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v83, v82, 16);
      if (v77)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v27 = v26;
  v31 = objc_msgSend_bytes(v27, v28, v29, v30);
  v33 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v32, 115, *(v31 + 20), *(v31 + 24), 0);
  v37 = objc_msgSend_device(metalCopy, v34, v35, v36);
  v40 = objc_msgSend_newTextureWithDescriptor_(v37, v38, v33, v39);

  if (v40)
  {
    if (objc_msgSend_fillLSCGainsTextureFrom_tex_maxValuesRGBA_(v7, v41, v31, v40, v81))
    {
      FigDebugAssert3();

      v70 = 0;
      dictionaryCopy = v73;
      goto LABEL_15;
    }

    objc_msgSend_setObject_forKeyedSubscript_(v7->_lscGainsByPortType, v42, v40, v22);
    v78 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v43, @"%@#max", v44, v22);
    v79 = v26;
    LODWORD(v45) = v81[0];
    v49 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v46, v47, v48, v45);
    v80[0] = v49;
    LODWORD(v50) = v81[1];
    v54 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v51, v52, v53, v50);
    v80[1] = v54;
    LODWORD(v55) = v81[2];
    v59 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v56, v57, v58, v55);
    v80[2] = v59;
    LODWORD(v60) = v81[3];
    v64 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v61, v62, v63, v60);
    v80[3] = v64;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v65, v80, 4);
    v66 = v33;
    v68 = v67 = v17;

    v26 = v79;
    objc_msgSend_setObject_forKeyedSubscript_(v7->_lscGainsByPortType, v69, v68, v78);

    v17 = v67;
    goto LABEL_11;
  }

  dictionaryCopy = v73;
  if (sub_29589D4CC(v33, v26, v17))
  {
    goto LABEL_14;
  }

  v70 = 0;
LABEL_15:
  v71 = v70;

  return v71;
}

- (int)fillLSCGainsTextureFrom:(id *)from tex:(id)tex maxValuesRGBA:(float *)a
{
  texCopy = tex;
  var4 = from->var1.var0.var4;
  var5 = from->var1.var0.var5;
  var6 = from->var1.var0.var6;
  var7 = from->var1.var0.var7;
  var8 = from->var1.var0.var8;
  var9 = from->var1.var0.var9;
  v13 = (var5 * var4);
  v14 = malloc_type_malloc(8 * v13, 0x1000040BDFB0063uLL);
  if (v14)
  {
    v15 = v14;
    memset_pattern16(a, &unk_2959D5F30, 0x10uLL);
    if (v13)
    {
      v17 = 0;
      v18 = &from->var1.var1.var10 + var6;
      v19 = &from->var1.var1.var10 + var9;
      v21 = *a;
      v22 = a[1];
      v23 = a[2];
      v24 = a[3];
      v25 = &from->var1.var1.var10 + var8;
      do
      {
        v20 = &from->var1.var1.var10 + var7;
        v26.i32[0] = v20[v17];
        if (v21 <= v26.f32[0])
        {
          v21 = *&v20[v17];
        }

        v26.i32[1] = v18[v17];
        v26.i32[2] = v25[v17];
        v26.i32[3] = v19[v17];
        *&v15[2 * ((v17 * 4) & 0xFFFFFFFC)] = vcvt_f16_f32(v26);
        *a = v21;
        if (v22 <= *&v18[v17])
        {
          v22 = *&v18[v17];
        }

        a[1] = v22;
        if (v23 <= *&v25[v17])
        {
          v23 = *&v25[v17];
        }

        a[2] = v23;
        if (v24 <= *&v19[v17])
        {
          v24 = *&v19[v17];
        }

        a[3] = v24;
        ++v17;
      }

      while (v13 != v17);
    }

    memset(v31, 0, 24);
    v31[3] = var4;
    v31[4] = var5;
    v31[5] = 1;
    v27 = texCopy;
    objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(texCopy, v16, v31, 0, v15, 8 * var4);
    free(v15);
    v28 = 0;
  }

  else
  {
    sub_29589D598();
    v28 = -12786;
    v27 = texCopy;
  }

  return v28;
}

- (id)getTextureMaxValueForPortType:(id)type
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%@#max", v3, type);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_lscGainsByPortType, v6, v5, v7);

  return v8;
}

@end