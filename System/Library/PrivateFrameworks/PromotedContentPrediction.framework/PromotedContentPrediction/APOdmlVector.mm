@interface APOdmlVector
- (APOdmlVector)initWithCoder:(id)coder;
- (APOdmlVector)initWithDictionary:(id)dictionary;
- (APOdmlVector)initWithVersion:(id)version andArray:(id)array;
- (APOdmlVector)initWithVersion:(id)version data:(id)data;
- (APOdmlVector)initWithVersion:(id)version length:(unsigned int)length floats:(float *)floats;
- (BOOL)isEqual:(id)equal;
- (NSData)data;
- (float)_createDataPtrFromArray:(id)array;
- (float)dotProduct:(id)product;
- (float)magnitude;
- (id)_initWithVersion:(id)version length:(unsigned int)length rawMallocedFloats:(float *)floats;
- (id)arrayOfNumbers;
- (id)cosineSimilarity:(id)similarity;
- (id)dictionaryRepresentation;
- (id)scalarMultiply:(float)multiply;
- (id)vectorAdd:(id)add;
- (id)vectorSubtract:(id)subtract;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setArrayOfNumber:(id)number;
- (void)setDataPtr:(float *)ptr;
@end

@implementation APOdmlVector

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_version(self, v6, v7);
      v11 = objc_msgSend_version(v5, v9, v10);
      isEqualToString = objc_msgSend_isEqualToString_(v8, v12, v11);

      v16 = objc_msgSend_data(self, v14, v15);
      v19 = objc_msgSend_data(v5, v17, v18);
      isEqualToData = objc_msgSend_isEqualToData_(v16, v20, v19);

      v24 = objc_msgSend_length(self, v22, v23);
      if (v24 == objc_msgSend_length(v5, v25, v26))
      {
        v27 = isEqualToData;
      }

      else
      {
        v27 = 0;
      }

      if (isEqualToString)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_version(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_length(self, v8, v9);
  v13 = objc_msgSend_data(self, v11, v12);
  v16 = v7 ^ objc_msgSend_hash(v13, v14, v15);

  return v16 ^ v10;
}

- (APOdmlVector)initWithVersion:(id)version length:(unsigned int)length floats:(float *)floats
{
  v23 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = APOdmlVector;
  v10 = [(APOdmlVector *)&v18 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = malloc_type_malloc(4 * length, 0xEF375D3uLL);
  v10->_dataPtr = v11;
  if (v11)
  {
    memcpy(v11, floats, 4 * length);
    v10->_length = length;
    objc_storeStrong(&v10->_version, version);
LABEL_4:
    v12 = v10;
    goto LABEL_8;
  }

  v13 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    *buf = 138412546;
    v20 = v14;
    v21 = 1024;
    v22 = 4 * length;
    v15 = v14;
    _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] ERROR: Could not alloc space of %ul", buf, 0x12u);
  }

  v12 = 0;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (APOdmlVector)initWithVersion:(id)version data:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = APOdmlVector;
  v11 = [(APOdmlVector *)&v21 init];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_length(dataCopy, v9, v10);
  v13 = malloc_type_malloc(v12, 0xA5CE0DC7uLL);
  *(v11 + 1) = v13;
  if (v13)
  {
    *(v11 + 4) = v12 >> 2;
    objc_storeStrong(v11 + 3, version);
    objc_msgSend_getBytes_range_(dataCopy, v14, *(v11 + 1), 0, v12);
LABEL_4:
    v15 = v11;
    goto LABEL_8;
  }

  v16 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v23 = v17;
    v24 = 1024;
    v25 = v12;
    v18 = v17;
    _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@] ERROR: Could not alloc space of %ul", buf, 0x12u);
  }

  v15 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (APOdmlVector)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  v7 = objc_msgSend_objectForKey_ofKindOfClass_(dictionaryCopy, v6, @"vector", v5);
  v8 = objc_opt_class();
  v10 = objc_msgSend_objectForKey_ofKindOfClass_(dictionaryCopy, v9, @"version", v8);
  v13 = objc_msgSend_copy(v10, v11, v12);

  if (v7)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 138413058;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = dictionaryCopy;
      v17 = v22;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_ERROR, "[%@] ERROR: Invalid dictionary\nVersion:\t%@\nVector:\t%@\nDict:\t%@", &v21, 0x2Au);
    }

    selfCopy = 0;
  }

  else
  {
    self = objc_msgSend_initWithVersion_andArray_(self, v14, v13, v7);
    selfCopy = self;
  }

  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (APOdmlVector)initWithVersion:(id)version andArray:(id)array
{
  v31 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  arrayCopy = array;
  v24.receiver = self;
  v24.super_class = APOdmlVector;
  v8 = [(APOdmlVector *)&v24 init];
  v10 = v8;
  if (v8 && (v8->_dataPtr = objc_msgSend__createDataPtrFromArray_(v8, v9, arrayCopy), v10->_length = objc_msgSend_count(arrayCopy, v11, v12), v15 = objc_msgSend_copy(versionCopy, v13, v14), v16 = v10->_version, v10->_version = v15, v16, !v10->_version))
  {
    v18 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      version = v10->_version;
      *buf = 138412802;
      v26 = v19;
      v27 = 2112;
      versionCopy2 = version;
      v29 = 2112;
      v30 = arrayCopy;
      v21 = v19;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] ERROR: Invalid initializer\nVersion:\t%@\nVector:\t%@", buf, 0x20u);
    }

    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (APOdmlVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = APOdmlVector;
  v5 = [(APOdmlVector *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v7, v6, @"vector");
    v5->_dataPtr = objc_msgSend__createDataPtrFromArray_(v5, v9, v8);
    v5->_length = objc_msgSend_count(v8, v10, v11);
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"version");
    objc_msgSend_setVersion_(v5, v15, v14);
  }

  return v5;
}

- (id)_initWithVersion:(id)version length:(unsigned int)length rawMallocedFloats:(float *)floats
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = APOdmlVector;
  v10 = [(APOdmlVector *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataPtr = floats;
    v10->_length = length;
    objc_storeStrong(&v10->_version, version);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = objc_msgSend_arrayOfNumbers(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v12, @"vector");
  v10 = objc_msgSend_version(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"version");
}

- (void)dealloc
{
  dataPtr = self->_dataPtr;
  if (dataPtr)
  {
    free(dataPtr);
  }

  v4.receiver = self;
  v4.super_class = APOdmlVector;
  [(APOdmlVector *)&v4 dealloc];
}

- (void)setDataPtr:(float *)ptr
{
  dataPtr = self->_dataPtr;
  if (dataPtr)
  {
    free(dataPtr);
  }

  self->_dataPtr = ptr;
}

- (float)_createDataPtrFromArray:(id)array
{
  v30 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy && (v7 = 4 * objc_msgSend_count(arrayCopy, v4, v5)) != 0)
  {
    v10 = malloc_type_malloc(v7, 0xD56414C8uLL);
    if (v10)
    {
      v11 = objc_msgSend_count(v6, v8, v9);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v6;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v29, 16);
      if (v14)
      {
        v17 = v14;
        v18 = &v10[v11];
        v19 = *v26;
        v20 = v10;
        do
        {
          v21 = 0;
          do
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v12);
            }

            if (v20 < v18)
            {
              objc_msgSend_floatValue(*(*(&v25 + 1) + 8 * v21), v15, v16, v25);
              *v20++ = v22;
            }

            ++v21;
          }

          while (v17 != v21);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v25, v29, 16);
        }

        while (v17);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)arrayOfNumbers
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_initWithCapacity_(v3, v4, self->_length);
  if (self->_length)
  {
    v9 = 0;
    do
    {
      *&v8 = self->_dataPtr[v9];
      v10 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v5, v6, v8);
      objc_msgSend_addObject_(v7, v11, v10);

      ++v9;
    }

    while (v9 < self->_length);
  }

  v12 = objc_msgSend_copy(v7, v5, v6);

  return v12;
}

- (void)setArrayOfNumber:(id)number
{
  numberCopy = number;
  DataPtrFromArray = objc_msgSend__createDataPtrFromArray_(self, v5, numberCopy);
  objc_msgSend_setDataPtr_(self, v7, DataPtrFromArray);
  v10 = objc_msgSend_count(numberCopy, v8, v9);

  self->_length = v10;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (self->_dataPtr)
  {
    v7 = objc_msgSend_arrayOfNumbers(self, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"vector");
  }

  version = self->_version;
  if (version)
  {
    objc_msgSend_setObject_forKey_(v6, v4, version, @"version");
  }

  v10 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v4, v6);

  return v10;
}

- (NSData)data
{
  v3 = 4 * self->_length;
  v4 = objc_alloc(MEMORY[0x277CBEB28]);
  v6 = objc_msgSend_initWithCapacity_(v4, v5, 4 * v3);
  v9 = v6;
  if (v3)
  {
    dataPtr = self->_dataPtr;
    if (dataPtr)
    {
      objc_msgSend_appendBytes_length_(v6, v7, dataPtr, v3);
    }
  }

  v10 = objc_msgSend_copy(v9, v7, dataPtr);

  return v10;
}

- (id)scalarMultiply:(float)multiply
{
  multiplyCopy = multiply;
  v4 = malloc_type_malloc(4 * self->_length, 0x40988BDCuLL);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x2666F4EF0](self->_dataPtr, 1, &multiplyCopy, v4, 1, self->_length);
    v6 = [APOdmlVector alloc];
    v9 = objc_msgSend_version(self, v7, v8);
    v11 = objc_msgSend__initWithVersion_length_rawMallocedFloats_(v6, v10, v9, self->_length, v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (float)dotProduct:(id)product
{
  v34 = *MEMORY[0x277D85DE8];
  productCopy = product;
  v7 = objc_msgSend_version(self, v5, v6);
  v10 = objc_msgSend_version(productCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  v15 = 0.0;
  if (!v12)
  {
    v16 = objc_msgSend_length(self, v13, v14);
    if (v16 == objc_msgSend_length(productCopy, v17, v18))
    {
      v28 = 0;
      vDSP_dotpr(self->_dataPtr, 1, productCopy[1], 1, &v28, self->_length);
      v15 = *&v28;
    }

    else
    {
      v19 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = v20;
        v28 = 138412802;
        v29 = v20;
        v30 = 2048;
        v31 = objc_msgSend_length(self, v22, v23);
        v32 = 2048;
        v33 = objc_msgSend_length(productCopy, v24, v25);
        _os_log_impl(&dword_260ECB000, v19, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Dot Product) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v28, 0x20u);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)vectorAdd:(id)add
{
  v39 = *MEMORY[0x277D85DE8];
  addCopy = add;
  v7 = objc_msgSend_version(self, v5, v6);
  v10 = objc_msgSend_version(addCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (v12)
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_9;
  }

  length = self->_length;
  if (length != objc_msgSend_length(addCopy, v13, v14))
  {
    v24 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = v25;
      v33 = 138412802;
      v34 = v25;
      v35 = 2048;
      v36 = objc_msgSend_length(self, v27, v28);
      v37 = 2048;
      v38 = objc_msgSend_length(addCopy, v29, v30);
      _os_log_impl(&dword_260ECB000, v24, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Vector Add) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v33, 0x20u);
    }

    goto LABEL_8;
  }

  v16 = malloc_type_malloc(4 * self->_length, 0xBEC08917uLL);
  if (v16)
  {
    v17 = v16;
    MEMORY[0x2666F4EE0](self->_dataPtr, 1, addCopy[1], 1, v16, 1, self->_length);
    v18 = [APOdmlVector alloc];
    v21 = objc_msgSend_version(self, v19, v20);
    selfCopy = objc_msgSend__initWithVersion_length_rawMallocedFloats_(v18, v22, v21, self->_length, v17);
  }

  else
  {
    selfCopy = 0;
  }

LABEL_9:

  v31 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)vectorSubtract:(id)subtract
{
  v41 = *MEMORY[0x277D85DE8];
  subtractCopy = subtract;
  v7 = objc_msgSend_version(self, v5, v6);
  v10 = objc_msgSend_version(subtractCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (v12)
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_9;
  }

  v15 = objc_msgSend_length(self, v13, v14);
  if (v15 != objc_msgSend_length(subtractCopy, v16, v17))
  {
    v26 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = v27;
      v35 = 138412802;
      v36 = v27;
      v37 = 2048;
      v38 = objc_msgSend_length(self, v29, v30);
      v39 = 2048;
      v40 = objc_msgSend_length(subtractCopy, v31, v32);
      _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Vector Subtract) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v35, 0x20u);
    }

    goto LABEL_8;
  }

  v18 = malloc_type_malloc(4 * self->_length, 0xBBB1F084uLL);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x2666F4F00](subtractCopy[1], 1, self->_dataPtr, 1, v18, 1, self->_length);
    v20 = [APOdmlVector alloc];
    v23 = objc_msgSend_version(self, v21, v22);
    selfCopy = objc_msgSend__initWithVersion_length_rawMallocedFloats_(v20, v24, v23, self->_length, v19);
  }

  else
  {
    selfCopy = 0;
  }

LABEL_9:

  v33 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (float)magnitude
{
  __C = 0.0;
  dataPtr = self->_dataPtr;
  v4 = objc_msgSend_length(self, a2, v2);
  vDSP_svesq(dataPtr, 1, &__C, v4);
  return sqrtf(__C);
}

- (id)cosineSimilarity:(id)similarity
{
  v51 = *MEMORY[0x277D85DE8];
  similarityCopy = similarity;
  v7 = objc_msgSend_version(self, v5, v6);
  v10 = objc_msgSend_version(similarityCopy, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  if (v12)
  {
    goto LABEL_14;
  }

  v15 = objc_msgSend_length(self, v13, v14);
  if (v15 != objc_msgSend_length(similarityCopy, v16, v17))
  {
    v31 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = v36;
      v45 = 138412802;
      v46 = v36;
      v47 = 2048;
      *&v48 = objc_msgSend_length(self, v38, v39);
      v49 = 2048;
      *&v50 = objc_msgSend_length(similarityCopy, v40, v41);
      _os_log_impl(&dword_260ECB000, v31, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Cosine Similarity) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v45, 0x20u);
    }

    goto LABEL_13;
  }

  objc_msgSend_magnitude(self, v18, v19);
  v21 = v20;
  objc_msgSend_magnitude(similarityCopy, v22, v23);
  v26 = v25;
  if (v21 == 0.0 || v25 == 0.0)
  {
    v31 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v45 = 138412802;
      v46 = objc_opt_class();
      v47 = 2048;
      v48 = v21;
      v49 = 2048;
      v50 = v26;
      v32 = v46;
      v33 = "[%@] ERROR: We are going to divide by zero:\nOur Magnitude:\t%f\nVec Magnitude:\t%f";
      v34 = v31;
      v35 = 32;
      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v42 = 0;
    goto LABEL_15;
  }

  objc_msgSend_dotProduct_(self, v24, similarityCopy);
  v30 = *&v29 / (v21 * v26);
  if (fabsf(v30) > 1.0)
  {
    v31 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v45 = 138412546;
      v46 = objc_opt_class();
      v47 = 2048;
      v48 = v30;
      v32 = v46;
      v33 = "[%@] ERROR: Cosine Similarity is out of bounds: %f";
      v34 = v31;
      v35 = 22;
LABEL_12:
      _os_log_impl(&dword_260ECB000, v34, OS_LOG_TYPE_ERROR, v33, &v45, v35);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *&v29 = v30;
  v42 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v27, v28, v29);
LABEL_15:

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

@end