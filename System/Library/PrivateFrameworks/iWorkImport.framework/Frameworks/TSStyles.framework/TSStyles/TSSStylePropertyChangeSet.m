@interface TSSStylePropertyChangeSet
- (BOOL)isEmptyChangeSet;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChangeSet:(id)a3;
- (id)changedPropertyPaths;
- (id)collectUndoForStyle:(id)a3;
- (id)collectUnset;
- (id)description;
- (id)p_variationPropertyMapFromStyle:(id)a3 withPropertyMap:(id)a4;
- (id)propertyChangeFilteredByProperties:(id)a3;
- (id)variationPropertyMapFromParentStyle:(id)a3;
- (id)variationPropertyMapFromStyle:(id)a3;
- (id)variationStyleFrom:(id)a3 inStylesheet:(id)a4;
- (unint64_t)hash;
@end

@implementation TSSStylePropertyChangeSet

- (id)collectUndoForStyle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276CBBF24;
  v12[3] = &unk_27A6EF2B0;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v8, v12);
  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)collectUnset
{
  v3 = objc_alloc_init(objc_opt_class());
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276CBC0F4;
  v7[3] = &unk_27A6EF2D8;
  v4 = v3;
  v8 = v4;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v5, v7);

  return v4;
}

- (id)p_variationPropertyMapFromStyle:(id)a3 withPropertyMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276CBC254;
  v14[3] = &unk_27A6EF2B0;
  v8 = v7;
  v15 = v8;
  v16 = v6;
  v9 = v6;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v10, v14);
  v11 = v16;
  v12 = v8;

  return v8;
}

- (id)variationPropertyMapFromStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_propertyMap(TSSPropertyMap, v5, v6);
  v9 = objc_msgSend_p_variationPropertyMapFromStyle_withPropertyMap_(self, v8, v4, v7);

  return v9;
}

- (id)variationPropertyMapFromParentStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_overridePropertyMap(v4, v5, v6);
  v9 = objc_msgSend_p_variationPropertyMapFromStyle_withPropertyMap_(self, v8, v4, v7);

  return v9;
}

- (id)variationStyleFrom:(id)a3 inStylesheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_baseStyleForVariation(v6, v8, v9);
  if (objc_msgSend_isVariation(v6, v11, v12))
  {
    objc_msgSend_variationPropertyMapFromParentStyle_(self, v13, v6);
  }

  else
  {
    objc_msgSend_variationPropertyMapFromStyle_(self, v13, v6);
  }
  v14 = ;
  v17 = objc_msgSend_documentRoot(v7, v15, v16);
  v20 = objc_msgSend_stylesheet(v17, v18, v19);

  if (v20 == v7)
  {
    v23 = objc_msgSend_documentRoot(v7, v21, v22);
    v25 = objc_msgSend_migratedPropertyMapForPropertyMap_(v23, v24, v14);

    v14 = v25;
  }

  v26 = objc_msgSend_variationOfStyle_propertyMap_(v7, v21, v10, v14);

  return v26;
}

- (id)changedPropertyPaths
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276CBC6A0;
  v8[3] = &unk_27A6EF2D8;
  v5 = v4;
  v9 = v5;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v6, v8);

  return v5;
}

- (BOOL)isEmptyChangeSet
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276CBC83C;
  v4[3] = &unk_27A6EF300;
  v4[4] = &v5;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)propertyChangeFilteredByProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276CBC94C;
  v12[3] = &unk_27A6EF2B0;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v8, v12);
  v9 = v14;
  v10 = v7;

  return v7;
}

- (BOOL)isEqualToChangeSet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276CBCC10;
    v17[3] = &unk_27A6EF2D8;
    v6 = v5;
    v18 = v6;
    objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, v7, v17);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276CBCD00;
    v14[3] = &unk_27A6EF328;
    v8 = v6;
    v15 = v8;
    v16 = &v19;
    objc_msgSend_enumerateDefinedPropertiesWithBlock_(v4, v9, v14);
    if (objc_msgSend_count(v8, v10, v11))
    {
      v12 = 0;
      *(v20 + 24) = 0;
    }

    else
    {
      v12 = *(v20 + 24);
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_isEqualToChangeSet_(self, v5, v4);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276CBCFB4;
  v4[3] = &unk_27A6EF300;
  v4[4] = &v5;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)description
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_276CBD1B0;
  v16 = sub_276CBD1C0;
  v17 = &stru_2885E7A20;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276CBD1C8;
  v11[3] = &unk_27A6EF300;
  v11[4] = &v12;
  objc_msgSend_enumerateDefinedPropertiesWithBlock_(self, a2, v11);
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v6 = objc_msgSend_descriptionWithObject_class_format_(v3, v5, self, v4, @"%@", v13[5]);
  v9 = objc_msgSend_descriptionString(v6, v7, v8);

  _Block_object_dispose(&v12, 8);

  return v9;
}

@end