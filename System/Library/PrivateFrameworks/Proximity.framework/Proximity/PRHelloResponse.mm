@interface PRHelloResponse
- (BOOL)isEqual:(id)equal;
- (PRHelloResponse)initWithCoder:(id)coder;
- (PRHelloResponse)initWithHelloResponse:(const void *)response;
- (PRHelloResponse)initWithRoseFirmwareVersion:(id)version hsiVersionMajor:(unsigned __int8)major hsiVersionMinor:(unsigned __int8)minor hardwareVersion:(unint64_t)hardwareVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRHelloResponse

- (PRHelloResponse)initWithRoseFirmwareVersion:(id)version hsiVersionMajor:(unsigned __int8)major hsiVersionMinor:(unsigned __int8)minor hardwareVersion:(unint64_t)hardwareVersion
{
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = PRHelloResponse;
  v12 = [(PRHelloResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_roseFirmwareVersion, version);
    v13->_hsiVersionMajor = major;
    v13->_hsiVersionMinor = minor;
    v13->_hardwareVersion = hardwareVersion;
  }

  return v13;
}

- (PRHelloResponse)initWithHelloResponse:(const void *)response
{
  v35.receiver = self;
  v35.super_class = PRHelloResponse;
  v4 = [(PRHelloResponse *)&v35 init];
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    if (*(response + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *response, *(response + 1));
    }

    else
    {
      __p = *response;
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

    v4->_hsiVersionMajor = *(response + 24);
    v4->_hsiVersionMinor = *(response + 25);
    if (*(response + 13) >= 7u)
    {
      v9 = 7;
    }

    else
    {
      v9 = *(response + 13);
    }

    v4->_hardwareVersion = v9;
    if (*(response + 96))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *(response + 8);
      WORD2(__p.__r_.__value_.__r.__words[0]) = *(response + 18);
      if (*(response + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], *(response + 5), *(response + 6));
      }

      else
      {
        *&__p.__r_.__value_.__r.__words[1] = *(response + 40);
        v32 = *(response + 7);
      }

      v33 = *(response + 8);
      if (*(response + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&v34, *(response + 9), *(response + 10));
      }

      else
      {
        v34 = *(response + 3);
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

    if ((*(response + 13) & 0x100000000) != 0)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
      boardID = v4->_boardID;
      v4->_boardID = v28;
    }
  }

  return v4;
}

- (PRHelloResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roseFirmwareVersion"];
  v6 = -[PRHelloResponse initWithRoseFirmwareVersion:hsiVersionMajor:hsiVersionMinor:hardwareVersion:](self, "initWithRoseFirmwareVersion:hsiVersionMajor:hsiVersionMinor:hardwareVersion:", v5, [coderCopy decodeIntForKey:@"hsiVersionMajor"], objc_msgSend(coderCopy, "decodeIntForKey:", @"hsiVersionMinor"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"roseHardwareVersion"));

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addlInfoSize"];
  [(PRHelloResponse *)v6 setAddlInfoSize:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apFirmwareVersion"];
  [(PRHelloResponse *)v6 setApFirmwareVersion:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dspFirmwareVersion"];
  [(PRHelloResponse *)v6 setDspFirmwareVersion:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  [(PRHelloResponse *)v6 setTarget:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calDataVersion"];
  [(PRHelloResponse *)v6 setCalDataVersion:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moduleID"];
  [(PRHelloResponse *)v6 setModuleID:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modemInitVersion"];
  [(PRHelloResponse *)v6 setModemInitVersion:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boardID"];
  [(PRHelloResponse *)v6 setBoardID:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extraBytes"];
  [(PRHelloResponse *)v6 setExtraBytes:v15];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_roseFirmwareVersion forKey:@"roseFirmwareVersion"];
  [coderCopy encodeInt:self->_hsiVersionMajor forKey:@"hsiVersionMajor"];
  [coderCopy encodeInt:self->_hsiVersionMinor forKey:@"hsiVersionMinor"];
  [coderCopy encodeInteger:self->_hardwareVersion forKey:@"roseHardwareVersion"];
  [coderCopy encodeObject:self->_addlInfoSize forKey:@"addlInfoSize"];
  [coderCopy encodeObject:self->_apFirmwareVersion forKey:@"apFirmwareVersion"];
  [coderCopy encodeObject:self->_dspFirmwareVersion forKey:@"dspFirmwareVersion"];
  [coderCopy encodeObject:self->_target forKey:@"target"];
  [coderCopy encodeObject:self->_calDataVersion forKey:@"calDataVersion"];
  [coderCopy encodeObject:self->_moduleID forKey:@"moduleID"];
  [coderCopy encodeObject:self->_modemInitVersion forKey:@"modemInitVersion"];
  [coderCopy encodeObject:self->_boardID forKey:@"boardID"];
  [coderCopy encodeObject:self->_extraBytes forKey:@"extraBytes"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    roseFirmwareVersion = [v5 roseFirmwareVersion];
    roseFirmwareVersion2 = [(PRHelloResponse *)self roseFirmwareVersion];
    if (![roseFirmwareVersion isEqual:roseFirmwareVersion2] || (v8 = objc_msgSend(v5, "hsiVersionMajor"), v8 != -[PRHelloResponse hsiVersionMajor](self, "hsiVersionMajor")) || (v9 = objc_msgSend(v5, "hsiVersionMinor"), v9 != -[PRHelloResponse hsiVersionMinor](self, "hsiVersionMinor")) || (v10 = objc_msgSend(v5, "hardwareVersion"), v10 != -[PRHelloResponse hardwareVersion](self, "hardwareVersion")))
    {
      v16 = 0;
LABEL_19:

      goto LABEL_20;
    }

    addlInfoSize = [v5 addlInfoSize];
    addlInfoSize2 = [(PRHelloResponse *)self addlInfoSize];
    if (![addlInfoSize isEqual:addlInfoSize2])
    {
      v16 = 0;
LABEL_44:

      goto LABEL_19;
    }

    apFirmwareVersion = [v5 apFirmwareVersion];
    apFirmwareVersion2 = [(PRHelloResponse *)self apFirmwareVersion];
    if (![apFirmwareVersion isEqual:apFirmwareVersion2])
    {
      v16 = 0;
LABEL_43:

      goto LABEL_44;
    }

    dspFirmwareVersion = [v5 dspFirmwareVersion];
    dspFirmwareVersion2 = [(PRHelloResponse *)self dspFirmwareVersion];
    if (![dspFirmwareVersion isEqual:dspFirmwareVersion2])
    {
      v16 = 0;
LABEL_42:

      goto LABEL_43;
    }

    target = [v5 target];
    target2 = [(PRHelloResponse *)self target];
    if (![target isEqual:?])
    {
      v16 = 0;
LABEL_41:

      goto LABEL_42;
    }

    calDataVersion = [v5 calDataVersion];
    calDataVersion2 = [(PRHelloResponse *)self calDataVersion];
    if (![calDataVersion isEqual:?])
    {
      v16 = 0;
LABEL_40:

      goto LABEL_41;
    }

    moduleID = [v5 moduleID];
    moduleID2 = [(PRHelloResponse *)self moduleID];
    if (![moduleID isEqual:?])
    {
      v16 = 0;
LABEL_39:

      goto LABEL_40;
    }

    modemInitVersion = [v5 modemInitVersion];
    modemInitVersion2 = [(PRHelloResponse *)self modemInitVersion];
    if (![modemInitVersion isEqual:?])
    {
      v16 = 0;
LABEL_38:

      goto LABEL_39;
    }

    boardID = [v5 boardID];
    if (boardID || ([(PRHelloResponse *)self boardID], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      boardID2 = [v5 boardID];
      boardID3 = [(PRHelloResponse *)self boardID];
      if (![boardID2 isEqual:boardID3])
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

    extraBytes = [v5 extraBytes];
    if (extraBytes || ([(PRHelloResponse *)self extraBytes], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      extraBytes2 = [v5 extraBytes];
      extraBytes3 = [(PRHelloResponse *)self extraBytes];
      v16 = [extraBytes2 isEqual:extraBytes3];

      if (extraBytes)
      {

        if (!v23)
        {
LABEL_35:
          if (!boardID)
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