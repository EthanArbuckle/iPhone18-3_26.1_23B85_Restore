@interface TSWPTopicNumberHintLevelData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation TSWPTopicNumberHintLevelData

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v26) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_number(self, v6, v7);
      if (v8 == objc_msgSend_number(v5, v9, v10) && (v13 = objc_msgSend_labelType(self, v11, v12), v13 == objc_msgSend_labelType(v5, v14, v15)) && (v18 = objc_msgSend_numberType(self, v16, v17), v18 == objc_msgSend_numberType(v5, v19, v20)))
      {
        isTiered = objc_msgSend_isTiered(self, v21, v22);
        v26 = isTiered ^ objc_msgSend_isTiered(v5, v24, v25) ^ 1;
      }

      else
      {
        LOBYTE(v26) = 0;
      }
    }

    else
    {
      LOBYTE(v26) = 0;
    }
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_opt_new();
  *(result + 4) = self->_numberType;
  *(result + 1) = *&self->_number;
  *(result + 8) = self->_isTiered;
  return result;
}

- (id)debugDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_number(self, a2, v2);
  v8 = objc_msgSend_numberType(self, v6, v7);
  v11 = objc_msgSend_labelType(self, v9, v10);
  if (objc_msgSend_isTiered(self, v12, v13))
  {
    objc_msgSend_stringWithFormat_(v4, v14, @"{number: %lu, numberType: %lu, labelType: %lu, isTiered: %@", v5, v8, v11, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v14, @"{number: %lu, numberType: %lu, labelType: %lu, isTiered: %@", v5, v8, v11, @"NO");
  }
  v15 = ;

  return v15;
}

@end