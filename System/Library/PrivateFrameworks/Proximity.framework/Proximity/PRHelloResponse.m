@interface PRHelloResponse
- (BOOL)isEqual:(id)a3;
- (PRHelloResponse)initWithCoder:(id)a3;
- (PRHelloResponse)initWithHelloResponse:(const void *)a3;
- (PRHelloResponse)initWithRoseFirmwareVersion:(id)a3 hsiVersionMajor:(unsigned __int8)a4 hsiVersionMinor:(unsigned __int8)a5 hardwareVersion:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRHelloResponse

- (PRHelloResponse)initWithRoseFirmwareVersion:(id)a3 hsiVersionMajor:(unsigned __int8)a4 hsiVersionMinor:(unsigned __int8)a5 hardwareVersion:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PRHelloResponse;
  v12 = [(PRHelloResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_roseFirmwareVersion, a3);
    v13->_hsiVersionMajor = a4;
    v13->_hsiVersionMinor = a5;
    v13->_hardwareVersion = a6;
  }

  return v13;
}

- (PRHelloResponse)initWithHelloResponse:(const void *)a3
{
  v35.receiver = self;
  v35.super_class = PRHelloResponse;
  v4 = [(PRHelloResponse *)&v35 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 1));
    }

    else
    {
      __p = *a3;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v7 = [v5 stringWithUTF8String:{p_p, __p.__r_.__value_.__r.__words[0]}];
    roseFirmwareVersion = v4->_roseFirmwareVersion;
    v4->_roseFirmwareVersion = v7;

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v4->_hsiVersionMajor = *(a3 + 24);
    v4->_hsiVersionMinor = *(a3 + 25);
    if (*(a3 + 13) >= 7u)
    {
      v9 = 7;
    }

    else
    {
      v9 = *(a3 + 13);
    }

    v4->_hardwareVersion = v9;
    if (*(a3 + 96))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *(a3 + 8);
      WORD2(__p.__r_.__value_.__r.__words[0]) = *(a3 + 18);
      if (*(a3 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *(a3 + 5), *(a3 + 6));
      }

      else
      {
        *&__p.__r_.__value_.__r.__words[1] = *(a3 + 40);
        v32 = *(a3 + 7);
      }

      v33 = *(a3 + 8);
      if (*(a3 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(a3 + 9), *(a3 + 10));
      }

      else
      {
        v34 = *(a3 + 3);
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{__p.__r_.__value_.__s.__data_[0], __p.__r_.__value_.__r.__words[0]}];
      addlInfoSize = v4->_addlInfoSize;
      v4->_addlInfoSize = v10;

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&__p.__r_.__value_.__s.__data_[2]];
      apFirmwareVersion = v4->_apFirmwareVersion;
      v4->_apFirmwareVersion = v12;

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(__p.__r_.__value_.__r.__words[0])];
      dspFirmwareVersion = v4->_dspFirmwareVersion;
      v4->_dspFirmwareVersion = v14;

      if (v32 >= 0)
      {
        p_size = &__p.__r_.__value_.__l.__size_;
      }

      else
      {
        p_size = __p.__r_.__value_.__l.__size_;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_size];
      target = v4->_target;
      v4->_target = v17;

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
      calDataVersion = v4->_calDataVersion;
      v4->_calDataVersion = v19;

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v33)];
      moduleID = v4->_moduleID;
      v4->_moduleID = v21;

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v33)];
      modemInitVersion = v4->_modemInitVersion;
      v4->_modemInitVersion = v23;

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34.__r_.__value_.__r.__words[0];
      }

      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
      extraBytes = v4->_extraBytes;
      v4->_extraBytes = v26;

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__size_);
      }
    }

    if ((*(a3 + 13) & 0x100000000) != 0)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      boardID = v4->_boardID;
      v4->_boardID = v28;
    }
  }

  return v4;
}

- (PRHelloResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roseFirmwareVersion"];
  v6 = -[PRHelloResponse initWithRoseFirmwareVersion:hsiVersionMajor:hsiVersionMinor:hardwareVersion:](self, "initWithRoseFirmwareVersion:hsiVersionMajor:hsiVersionMinor:hardwareVersion:", v5, [v4 decodeIntForKey:@"hsiVersionMajor"], objc_msgSend(v4, "decodeIntForKey:", @"hsiVersionMinor"), objc_msgSend(v4, "decodeIntegerForKey:", @"roseHardwareVersion"));

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addlInfoSize"];
  [(PRHelloResponse *)v6 setAddlInfoSize:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apFirmwareVersion"];
  [(PRHelloResponse *)v6 setApFirmwareVersion:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dspFirmwareVersion"];
  [(PRHelloResponse *)v6 setDspFirmwareVersion:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  [(PRHelloResponse *)v6 setTarget:v10];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calDataVersion"];
  [(PRHelloResponse *)v6 setCalDataVersion:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"moduleID"];
  [(PRHelloResponse *)v6 setModuleID:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modemInitVersion"];
  [(PRHelloResponse *)v6 setModemInitVersion:v13];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boardID"];
  [(PRHelloResponse *)v6 setBoardID:v14];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extraBytes"];
  [(PRHelloResponse *)v6 setExtraBytes:v15];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_roseFirmwareVersion forKey:@"roseFirmwareVersion"];
  [v4 encodeInt:self->_hsiVersionMajor forKey:@"hsiVersionMajor"];
  [v4 encodeInt:self->_hsiVersionMinor forKey:@"hsiVersionMinor"];
  [v4 encodeInteger:self->_hardwareVersion forKey:@"roseHardwareVersion"];
  [v4 encodeObject:self->_addlInfoSize forKey:@"addlInfoSize"];
  [v4 encodeObject:self->_apFirmwareVersion forKey:@"apFirmwareVersion"];
  [v4 encodeObject:self->_dspFirmwareVersion forKey:@"dspFirmwareVersion"];
  [v4 encodeObject:self->_target forKey:@"target"];
  [v4 encodeObject:self->_calDataVersion forKey:@"calDataVersion"];
  [v4 encodeObject:self->_moduleID forKey:@"moduleID"];
  [v4 encodeObject:self->_modemInitVersion forKey:@"modemInitVersion"];
  [v4 encodeObject:self->_boardID forKey:@"boardID"];
  [v4 encodeObject:self->_extraBytes forKey:@"extraBytes"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRHelloResponse alloc] initWithRoseFirmwareVersion:self->_roseFirmwareVersion hsiVersionMajor:self->_hsiVersionMajor hsiVersionMinor:self->_hsiVersionMinor hardwareVersion:self->_hardwareVersion];
  [(PRHelloResponse *)v4 setAddlInfoSize:self->_addlInfoSize];
  [(PRHelloResponse *)v4 setApFirmwareVersion:self->_apFirmwareVersion];
  [(PRHelloResponse *)v4 setDspFirmwareVersion:self->_dspFirmwareVersion];
  [(PRHelloResponse *)v4 setTarget:self->_target];
  [(PRHelloResponse *)v4 setCalDataVersion:self->_calDataVersion];
  [(PRHelloResponse *)v4 setModuleID:self->_moduleID];
  [(PRHelloResponse *)v4 setModemInitVersion:self->_modemInitVersion];
  [(PRHelloResponse *)v4 setBoardID:self->_boardID];
  [(PRHelloResponse *)v4 setExtraBytes:self->_extraBytes];
  return v4;
}

- (id)description
{
  v3 = [(NSString *)self->_extraBytes length];
  hsiVersionMajor = self->_hsiVersionMajor;
  hsiVersionMinor = self->_hsiVersionMinor;
  roseFirmwareVersion = self->_roseFirmwareVersion;
  hardwareVersion = self->_hardwareVersion;
  addlInfoSize = self->_addlInfoSize;
  apFirmwareVersion = self->_apFirmwareVersion;
  dspFirmwareVersion = self->_dspFirmwareVersion;
  target = self->_target;
  calDataVersion = self->_calDataVersion;
  moduleID = self->_moduleID;
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Rose FW Version: %@, HSI Major: %d, HSI Minor: %d, Rose HW Version: %lu, Additional Info Size: %@, AP FW Version: %@, DSP FW Version: %@, Target: %@, Cal Data Version: %@, Module ID: %@, Modem Init Version: %@, Board ID: %@, Extra Bytes: %@", roseFirmwareVersion, hsiVersionMajor, hsiVersionMinor, hardwareVersion, addlInfoSize, apFirmwareVersion, dspFirmwareVersion, target, calDataVersion, moduleID, self->_modemInitVersion, self->_boardID, self->_extraBytes];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Rose FW Version: %@, HSI Major: %d, HSI Minor: %d, Rose HW Version: %lu, Additional Info Size: %@, AP FW Version: %@, DSP FW Version: %@, Target: %@, Cal Data Version: %@, Module ID: %@, Modem Init Version: %@, Board ID: %@", roseFirmwareVersion, hsiVersionMajor, hsiVersionMinor, hardwareVersion, addlInfoSize, apFirmwareVersion, dspFirmwareVersion, target, calDataVersion, moduleID, self->_boardID, self->_modemInitVersion, v16];
  }
  v14 = ;

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 roseFirmwareVersion];
    v7 = [(PRHelloResponse *)self roseFirmwareVersion];
    if (![v6 isEqual:v7] || (v8 = objc_msgSend(v5, "hsiVersionMajor"), v8 != -[PRHelloResponse hsiVersionMajor](self, "hsiVersionMajor")) || (v9 = objc_msgSend(v5, "hsiVersionMinor"), v9 != -[PRHelloResponse hsiVersionMinor](self, "hsiVersionMinor")) || (v10 = objc_msgSend(v5, "hardwareVersion"), v10 != -[PRHelloResponse hardwareVersion](self, "hardwareVersion")))
    {
      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v11 = [v5 addlInfoSize];
    v12 = [(PRHelloResponse *)self addlInfoSize];
    if (![v11 isEqual:v12])
    {
      v16 = 0;
LABEL_44:

      goto LABEL_19;
    }

    v13 = [v5 apFirmwareVersion];
    v14 = [(PRHelloResponse *)self apFirmwareVersion];
    if (![v13 isEqual:v14])
    {
      v16 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v36 = [v5 dspFirmwareVersion];
    v15 = [(PRHelloResponse *)self dspFirmwareVersion];
    if (![v36 isEqual:v15])
    {
      v16 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v35 = [v5 target];
    v34 = [(PRHelloResponse *)self target];
    if (![v35 isEqual:?])
    {
      v16 = 0;
LABEL_41:

      goto LABEL_42;
    }

    v33 = [v5 calDataVersion];
    v32 = [(PRHelloResponse *)self calDataVersion];
    if (![v33 isEqual:?])
    {
      v16 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v31 = [v5 moduleID];
    v30 = [(PRHelloResponse *)self moduleID];
    if (![v31 isEqual:?])
    {
      v16 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v29 = [v5 modemInitVersion];
    v28 = [(PRHelloResponse *)self modemInitVersion];
    if (![v29 isEqual:?])
    {
      v16 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v27 = [v5 boardID];
    if (v27 || ([(PRHelloResponse *)self boardID], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = [v5 boardID];
      v25 = [(PRHelloResponse *)self boardID];
      if (![v26 isEqual:v25])
      {
        v16 = 0;
        goto LABEL_34;
      }

      v23 = 1;
    }

    else
    {
      v20 = 0;
      v23 = 0;
    }

    v22 = [v5 extraBytes];
    if (v22 || ([(PRHelloResponse *)self extraBytes], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = [v5 extraBytes];
      v21 = [(PRHelloResponse *)self extraBytes];
      v16 = [v24 isEqual:v21];

      if (v22)
      {

        if (!v23)
        {
LABEL_35:
          if (!v27)
          {
          }

          goto LABEL_38;
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      v19 = 0;
      v16 = 1;
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v16 = 0;
LABEL_20:

  return v16;
}

@end