@interface SPRMonitorLog
+ (id)getEventString:(unsigned __int16)a3;
- (SPRMonitorLog)initWithAudit:(id)a3 details:(id)a4 origin:(id)a5 component:(id)a6;
- (SPRMonitorLog)initWithCoder:(id)a3;
- (SPRMonitorLog)initWithIncident:(id)a3 details:(id)a4 origin:(id)a5 component:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRMonitorLog

- (SPRMonitorLog)initWithAudit:(id)a3 details:(id)a4 origin:(id)a5 component:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  event = self->_event;
  self->_event = v10;
  v15 = v10;

  details = self->_details;
  self->_details = v11;
  v17 = v11;

  origin = self->_origin;
  self->_origin = v12;
  v19 = v12;

  component = self->_component;
  self->_component = v13;

  self->_logType = 0;
  return self;
}

- (SPRMonitorLog)initWithIncident:(id)a3 details:(id)a4 origin:(id)a5 component:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  event = self->_event;
  self->_event = v10;
  v15 = v10;

  details = self->_details;
  self->_details = v11;
  v17 = v11;

  origin = self->_origin;
  self->_origin = v12;
  v19 = v12;

  component = self->_component;
  self->_component = v13;

  self->_logType = 1;
  return self;
}

- (id)description
{
  if (self->_details)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = objc_msgSend_initWithData_encoding_(v5, v6, self->_details, 4, v7);
    if (v8)
    {
      v12 = v8;
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"{event: %@, details: %@, origin: %@, component: %@}", v10, v11, self->_event, v8, self->_origin, self->_component);
    }

    else
    {
      v12 = @"not printable";
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"{event: %@, details: %@, origin: %@, component: %@}", v10, v11, self->_event, @"not printable", self->_origin, self->_component);
    }
  }

  else
  {
    v12 = @"nil";
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"{event: %@, details: %@, origin: %@, component: %@}", v2, v3, self->_event, @"nil", self->_origin, self->_component);
  }
  v13 = ;

  return v13;
}

+ (id)getEventString:(unsigned __int16)a3
{
  if ((a3 - 13) > 0x14)
  {
    return @"UNKNOWN_MONITORING_EVENT";
  }

  else
  {
    return off_279CA5530[(a3 - 13)];
  }
}

- (SPRMonitorLog)initWithCoder:(id)a3
{
  v4 = a3;
  self->_logType = objc_msgSend_decodeIntegerForKey_(v4, v5, @"logType", v6, v7);
  v8 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"event", v10);
  event = self->_event;
  self->_event = v11;

  v13 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v14, v13, @"details", v15);
  details = self->_details;
  self->_details = v16;

  v18 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"origin", v20);
  origin = self->_origin;
  self->_origin = v21;

  v23 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"component", v25);

  component = self->_component;
  self->_component = v26;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  logType = self->_logType;
  v15 = a3;
  objc_msgSend_encodeInteger_forKey_(v15, v5, logType, @"logType", v6);
  objc_msgSend_encodeObject_forKey_(v15, v7, self->_event, @"event", v8);
  objc_msgSend_encodeObject_forKey_(v15, v9, self->_details, @"details", v10);
  objc_msgSend_encodeObject_forKey_(v15, v11, self->_origin, @"origin", v12);
  objc_msgSend_encodeObject_forKey_(v15, v13, self->_component, @"component", v14);
}

@end