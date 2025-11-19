@interface RS3DMarker
- (RS3DMarker)init;
- (RS3DMarker)initWithDictionary:(id)a3;
- (__n128)quad;
- (id)dictionaryRepresentation;
@end

@implementation RS3DMarker

- (__n128)quad
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  return result;
}

- (id)dictionaryRepresentation
{
  v29[4] = *MEMORY[0x277D85DE8];
  v27[0] = @"quad";
  v4 = sub_2622E76BC(*&self[1].super.isa, self, a2, v2);
  v29[0] = v4;
  v7 = sub_2622E76BC(*&self[1]._normal[4], v4, v5, v6);
  v29[1] = v7;
  v10 = sub_2622E76BC(*&self[2].super.isa, v7, v8, v9);
  v29[2] = v10;
  v13 = sub_2622E76BC(*&self[2]._normal[4], v10, v11, v12);
  v29[3] = v13;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v29, 4);

  v28[0] = v15;
  v27[1] = @"score";
  *&v16 = self->_score;
  v19 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v17, v18, v16);
  v28[1] = v19;
  v27[2] = @"normal";
  v22 = sub_2622E76BC(*&self->_normal[4], v19, v20, v21);
  v28[2] = v22;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v28, v27, 3);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (RS3DMarker)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = RS3DMarker;
  v6 = [(RS3DMarker *)&v32 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"quad");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = v8;
      if (objc_msgSend_count(v9, v10, v11) == 4)
      {
        v13 = 0;
        v14 = v6 + 32;
        while (1)
        {
          v15 = objc_msgSend_objectAtIndexedSubscript_(v9, v12, v13);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            break;
          }

          v18 = objc_msgSend_objectAtIndexedSubscript_(v9, v17, v13);
          v19 = sub_2622E7A80(v18, v14);

          if (!v19)
          {
            break;
          }

          ++v13;
          ++v14;
          if (v13 == 4)
          {

            v21 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"score");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }

            if (v22)
            {
              objc_msgSend_floatValue(v22, v24, v25);
            }

            else
            {
              v26 = 0;
            }

            *(v6 + 2) = v26;

            v28 = objc_msgSend_objectForKeyedSubscript_(v4, v27, @"normal");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v28;
            }

            else
            {
              v29 = 0;
            }

            if (!v29)
            {
              goto LABEL_14;
            }

            v30 = sub_2622E7A80(v29, v6 + 1);

            if (!v30)
            {
              goto LABEL_14;
            }

            goto LABEL_24;
          }
        }
      }
    }

LABEL_14:
    v23 = 0;
  }

  else
  {
LABEL_24:
    v23 = v6;
  }

  return v23;
}

- (RS3DMarker)init
{
  v3.receiver = self;
  v3.super_class = RS3DMarker;
  result = [(RS3DMarker *)&v3 init];
  if (result)
  {
    result->_score = 0.0;
    *&result->_normal[4] = 0u;
  }

  return result;
}

@end