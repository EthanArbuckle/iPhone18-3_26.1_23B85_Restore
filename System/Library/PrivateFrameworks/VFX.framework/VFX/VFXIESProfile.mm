@interface VFXIESProfile
+ (VFXIESProfile)profileWithURL:(id)a3;
- (VFXIESProfile)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VFXIESProfile

- (void)dealloc
{
  objc_msgSend_setName_(self, a2, 0, v2);

  sub_1AF195DF4(&self->_iesInfo);
  v4.receiver = self;
  v4.super_class = VFXIESProfile;
  [(VFXIESProfile *)&v4 dealloc];
}

+ (VFXIESProfile)profileWithURL:(id)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (sub_1AF195430(a3, (v4 + 1), v5, v6))
  {
    v10 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v7, v8, v9);
    v4[14] = objc_msgSend_UUIDString(v10, v11, v12, v13);

    return v4;
  }

  else
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF586C();
    }

    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  anglesHCount = self->_iesInfo.anglesHCount;
  if (anglesHCount >= 1)
  {
    v6 = 4 * anglesHCount;
    v7 = malloc_type_malloc(4 * anglesHCount, 0xBD3B7BCBuLL);
    v4[10] = v7;
    memcpy(v7, self->_iesInfo.anglesH, v6);
  }

  anglesVCount = self->_iesInfo.anglesVCount;
  if (anglesVCount >= 1)
  {
    v9 = 4 * anglesVCount;
    v10 = malloc_type_malloc(4 * anglesVCount, 0x599CFD2uLL);
    v4[11] = v10;
    memcpy(v10, self->_iesInfo.anglesV, v9);
  }

  candalaValuesCount = self->_iesInfo.candalaValuesCount;
  if (candalaValuesCount >= 1)
  {
    v12 = 4 * candalaValuesCount;
    v13 = malloc_type_malloc(4 * candalaValuesCount, 0xA2CEF8CAuLL);
    v4[12] = v13;
    memcpy(v13, self->_iesInfo.candalaValues, v12);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  anglesHCount = self->_iesInfo.anglesHCount;
  anglesVCount = self->_iesInfo.anglesVCount;
  v7 = 4 * self->_iesInfo.candalaValuesCount;
  v8 = 4 * anglesHCount + 4 * anglesVCount + v7;
  v9 = malloc_type_malloc(v8 + 72, 0x42A7C9ADuLL);
  *v9 = *&self->_iesInfo.totalLights;
  v10 = *&self->_iesInfo.anglesHCount;
  v11 = *&self->_iesInfo.length;
  v12 = *&self->_iesInfo.maxHAngle;
  v9[8] = *&self->_iesInfo.inputWatts;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 1) = v12;
  memcpy(v9 + 9, self->_iesInfo.anglesH, 4 * anglesHCount);
  memcpy(v9 + 4 * anglesHCount + 72, self->_iesInfo.anglesV, 4 * anglesVCount);
  memcpy(v9 + 4 * anglesHCount + 4 * anglesVCount + 72, self->_iesInfo.candalaValues, v7);
  v14 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v13, v9, v8 + 72, 1);
  objc_msgSend_encodeObject_forKey_(a3, v15, v14, @"iesData");
  objc_msgSend_encodeObject_forKey_(a3, v16, self->_name, @"name");
  identifier = self->_identifier;

  objc_msgSend_encodeObject_forKey_(a3, v17, identifier, @"identifier");
}

- (VFXIESProfile)initWithCoder:(id)a3
{
  v39.receiver = self;
  v39.super_class = VFXIESProfile;
  v4 = [(VFXIESProfile *)&v39 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"name");
    objc_msgSend_setName_(v4, v8, v7, v9);
    v10 = objc_opt_class();
    *(v4 + 14) = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"name");
    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v13, v12, @"iesData");
    v18 = objc_msgSend_bytes(v14, v15, v16, v17);
    if (objc_msgSend_length(v14, v19, v20, v21) > 0x47)
    {
      v26 = *(v18 + 48);
      v27 = *(v18 + 64);
      v28 = *(v18 + 16);
      *(v4 + 40) = *(v18 + 32);
      *(v4 + 8) = *v18;
      *(v4 + 9) = v27;
      *(v4 + 56) = v26;
      *(v4 + 24) = v28;
      v29 = *(v4 + 11);
      v30 = 4 * *(v4 + 10);
      v31 = *(v4 + 12);
      if (v30 + 4 * v29 + 4 * v31 + 72 == objc_msgSend_length(v14, v22, v23, v24))
      {
        v32 = (v18 + 72);
        v33 = malloc_type_malloc(v30, 0x5A8C0D9CuLL);
        *(v4 + 10) = v33;
        memcpy(v33, v32, v30);
        v34 = &v32[v30];
        v35 = malloc_type_malloc(4 * v29, 0xBEE9F575uLL);
        *(v4 + 11) = v35;
        memcpy(v35, v34, 4 * v29);
        v36 = malloc_type_malloc(4 * v31, 0xE102D019uLL);
        *(v4 + 12) = v36;
        memcpy(v36, &v34[4 * v29], 4 * v31);
      }

      else
      {
        v37 = sub_1AF0D5194();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF58DC();
        }
      }
    }

    else
    {
      v25 = sub_1AF0D5194();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF591C();
      }

      return 0;
    }
  }

  return v4;
}

@end