@interface RPPerson
- (RPPerson)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (unsigned)_updateDeviceDerivedInfo;
- (unsigned)removeRPDevice:(id)device;
- (unsigned)updateWithRPDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPPerson

- (RPPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RPPerson;
  v5 = [(RPPerson *)&v12 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v13 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_activityLevel = v13;
  }

  v6 = coderCopy;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  objc_opt_class();
  NSDecodeNSArrayOfClassIfPresent();
  v13 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_flags = v13;
  }

  v7 = v6;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  if (!v5->_identifier)
  {
    v10 = RPErrorF();
    [v7 failWithError:v10];

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_class();
  NSDecodeObjectIfPresent();

  v13 = 0;
  if (NSDecodeSInt64RangedIfPresent())
  {
    v5->_proximity = v13;
  }

  objc_opt_class();
  NSDecodeObjectIfPresent();
  v9 = v5;
LABEL_12:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityLevel = self->_activityLevel;
  v13 = coderCopy;
  if (activityLevel)
  {
    [coderCopy encodeInteger:activityLevel forKey:@"al"];
    coderCopy = v13;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v13 encodeObject:contactID forKey:@"cnid"];
    coderCopy = v13;
  }

  devices = self->_devices;
  if (devices)
  {
    [v13 encodeObject:devices forKey:@"dv"];
    coderCopy = v13;
  }

  flags = self->_flags;
  if (flags)
  {
    [v13 encodeInt64:flags forKey:@"fl"];
    coderCopy = v13;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v13 encodeObject:identifier forKey:@"id"];
    coderCopy = v13;
  }

  name = self->_name;
  if (name)
  {
    [v13 encodeObject:name forKey:@"nm"];
    coderCopy = v13;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v13 encodeInteger:proximity forKey:@"px"];
    coderCopy = v13;
  }

  relativeLocation = self->_relativeLocation;
  if (relativeLocation)
  {
    [v13 encodeObject:relativeLocation forKey:@"rl"];
    coderCopy = v13;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v58 = *MEMORY[0x1E69E9840];
  if (level <= 49)
  {
    v5 = 100;
  }

  else
  {
    v5 = 8;
  }

  v56 = 0;
  identifier = self->_identifier;
  NSAppendPrintF();
  v6 = 0;
  v7 = v6;
  flags = self->_flags;
  if (flags)
  {
    v55 = v6;
    identifier = flags;
    v44 = &unk_1B6F2E74A;
    NSAppendPrintF();
    v9 = v55;

    v7 = v9;
  }

  name = self->_name;
  if (name)
  {
    v54 = v7;
    identifier = name;
    NSAppendPrintF();
    v11 = v7;

    v7 = v11;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    v53 = v7;
    identifier = v5;
    v44 = contactID;
    NSAppendPrintF();
    v13 = v7;

    v7 = v13;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    v52 = v7;
    switch(proximity)
    {
      case 10:
        v15 = "Immed";
        break;
      case 30:
        v15 = "Far";
        break;
      case 20:
        v15 = "Near";
        break;
      default:
        v15 = "?";
        break;
    }

    identifier = v15;
    NSAppendPrintF();
    v16 = v52;

    v7 = v16;
  }

  relativeLocation = self->_relativeLocation;
  if (relativeLocation)
  {
    v51 = v7;
    identifier = relativeLocation;
    NSAppendPrintF();
    v18 = v7;

    v7 = v18;
  }

  activityLevel = self->_activityLevel;
  if (activityLevel)
  {
    v50 = v7;
    if (activityLevel > 0xE)
    {
      v20 = "?";
    }

    else
    {
      v20 = off_1E7C94C38[activityLevel - 1];
    }

    identifier = v20;
    NSAppendPrintF();
    v21 = v50;

    v7 = v21;
  }

  v22 = self->_devices;
  v23 = v22;
  if (v22)
  {
    v24 = [(NSArray *)v22 count];
    if (level > 49)
    {
      NSAppendPrintF();
      v39 = v7;
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = v23;
      v26 = [(NSArray *)v25 countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (!v26)
      {
LABEL_44:

        goto LABEL_45;
      }

      v27 = v26;
      v45 = v23;
      v28 = 0;
      v29 = 1;
      v30 = v24;
      v31 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v46 + 1) + 8 * i);
          if (v29)
          {
            v43 = v30;
            NSAppendPrintF();
            v34 = v7;

            v7 = v34;
          }

          name = [v33 name];
          v36 = name;
          if (name)
          {
            v37 = ", ";
            if (!v28)
            {
              v37 = "";
            }

            v43 = v37;
            v44 = name;
            NSAppendPrintF();
            v38 = v7;

            ++v28;
            v7 = v38;
          }

          v29 = 0;
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v46 objects:v57 count:16];
        v29 = 0;
      }

      while (v27);

      NSAppendPrintF();
      v39 = v7;
      v23 = v45;
    }

    v25 = v7;
    v7 = v39;
    goto LABEL_44;
  }

LABEL_45:

  v40 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unsigned)removeRPDevice:(id)device
{
  identifier = [device identifier];
  v5 = [(NSMutableDictionary *)self->_deviceDict objectForKeyedSubscript:identifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceDict setObject:0 forKeyedSubscript:identifier];
    allValues = [(NSMutableDictionary *)self->_deviceDict allValues];
    devices = self->_devices;
    self->_devices = allValues;

    v8 = [(RPPerson *)self _updateDeviceDerivedInfo]| 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)updateWithRPDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  v6 = [(NSMutableDictionary *)self->_deviceDict objectForKeyedSubscript:identifier];
  deviceDict = self->_deviceDict;
  if (!deviceDict)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_deviceDict;
    self->_deviceDict = v8;

    deviceDict = self->_deviceDict;
  }

  [(NSMutableDictionary *)deviceDict setObject:deviceCopy forKeyedSubscript:identifier];
  allValues = [(NSMutableDictionary *)self->_deviceDict allValues];
  devices = self->_devices;
  self->_devices = allValues;

  v12 = [(RPPerson *)self _updateDeviceDerivedInfo]| (2 * (v6 == 0));
  return v12;
}

- (unsigned)_updateDeviceDerivedInfo
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  flags = self->_flags;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  deviceDict = self->_deviceDict;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__RPPerson__updateDeviceDerivedInfo__block_invoke;
  v11[3] = &unk_1E7C94C18;
  v11[4] = self;
  v11[5] = &v20;
  v11[6] = &v24;
  v11[7] = &v16;
  v11[8] = &v12;
  [(NSMutableDictionary *)deviceDict enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(v21 + 6);
  v6 = v25;
  if (v5 != self->_activityLevel)
  {
    self->_activityLevel = v5;
    *(v6 + 6) |= 1u;
  }

  v7 = *(v17 + 6);
  if (v7 != flags)
  {
    self->_flags = v7;
    *(v6 + 6) |= 1u;
  }

  v8 = *(v13 + 6);
  if (v8 == self->_proximity)
  {
    v9 = *(v6 + 6);
  }

  else
  {
    self->_proximity = v8;
    v9 = *(v6 + 6) | 4;
    *(v6 + 6) = v9;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v9;
}

void __36__RPPerson__updateDeviceDerivedInfo__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 activityLevel];
  v5 = *(a1[5] + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  if (!*(a1[4] + 24))
  {
    v6 = [v11 contactID];
    if (v6)
    {
      objc_storeStrong((a1[4] + 24), v6);
      *(*(a1[6] + 8) + 24) |= 1u;
    }
  }

  v7 = [v11 flags];
  if ((v7 & 8) != 0)
  {
    *(*(a1[7] + 8) + 24) |= 8u;
    if ((v7 & 0x10) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(*(a1[7] + 8) + 24) |= 0x10u;
  if ((v7 & 4) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(*(a1[7] + 8) + 24) |= 4u;
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(*(a1[7] + 8) + 24) |= 0x20u;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    if ((v7 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(*(a1[7] + 8) + 24) |= 1u;
  if ((v7 & 2) == 0)
  {
LABEL_13:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(*(a1[7] + 8) + 24) |= 2u;
  if ((v7 & 0x40) == 0)
  {
LABEL_14:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(*(a1[7] + 8) + 24) |= 0x80u;
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  *(*(a1[7] + 8) + 24) |= 0x40u;
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v7 & 0x1000) != 0)
  {
LABEL_16:
    *(*(a1[7] + 8) + 24) |= 0x100u;
  }

LABEL_17:
  v8 = [v11 proximity];
  if (v8)
  {
    v9 = *(a1[8] + 8);
    v10 = *(v9 + 24);
    if (!v10 || v8 < v10)
    {
      *(v9 + 24) = v8;
    }
  }
}

@end