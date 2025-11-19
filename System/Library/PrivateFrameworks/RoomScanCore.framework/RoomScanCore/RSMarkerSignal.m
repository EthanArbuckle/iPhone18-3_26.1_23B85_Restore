@interface RSMarkerSignal
- (RSMarkerSignal)init;
- (RSMarkerSignal)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation RSMarkerSignal

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_markers;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_dictionaryRepresentation(*(*(&v20 + 1) + 8 * i), v10, v11, v20);
        objc_msgSend_addObject_(v7, v16, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v20, v24, 16);
    }

    while (v12);
  }

  objc_msgSend_setObject_forKey_(v4, v17, v7, @"markers");
  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (RSMarkerSignal)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = RSMarkerSignal;
  v6 = [(RSMarkerSignal *)&v33 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"markers");
    v8 = v7 == 0;

    if (!v8)
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"markers");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v11;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v29, v34, 16);
      if (v17)
      {
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * v19);
            v21 = [RS3DMarker alloc];
            v23 = objc_msgSend_initWithDictionary_(v21, v22, v20, v29);
            objc_msgSend_addObject_(v14, v24, v23);

            ++v19;
          }

          while (v17 != v19);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v25, &v29, v34, 16);
        }

        while (v17);
      }

      markers = v6->_markers;
      v6->_markers = v14;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

- (RSMarkerSignal)init
{
  v8.receiver = self;
  v8.super_class = RSMarkerSignal;
  v4 = [(RSMarkerSignal *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEA60], v2, v3);
    markers = v4->_markers;
    v4->_markers = v5;
  }

  return v4;
}

@end