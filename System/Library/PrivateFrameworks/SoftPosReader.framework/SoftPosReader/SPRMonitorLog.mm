@interface SPRMonitorLog
+ (id)getEventString:(unsigned __int16)string;
- (SPRMonitorLog)initWithAudit:(id)audit details:(id)details origin:(id)origin component:(id)component;
- (SPRMonitorLog)initWithCoder:(id)coder;
- (SPRMonitorLog)initWithIncident:(id)incident details:(id)details origin:(id)origin component:(id)component;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPRMonitorLog

- (SPRMonitorLog)initWithAudit:(id)audit details:(id)details origin:(id)origin component:(id)component
{
  auditCopy = audit;
  detailsCopy = details;
  originCopy = origin;
  componentCopy = component;
  event = self->_event;
  self->_event = auditCopy;
  v15 = auditCopy;

  details = self->_details;
  self->_details = detailsCopy;
  v17 = detailsCopy;

  origin = self->_origin;
  self->_origin = originCopy;
  v19 = originCopy;

  component = self->_component;
  self->_component = componentCopy;

  self->_logType = 0;
  return self;
}

- (SPRMonitorLog)initWithIncident:(id)incident details:(id)details origin:(id)origin component:(id)component
{
  incidentCopy = incident;
  detailsCopy = details;
  originCopy = origin;
  componentCopy = component;
  event = self->_event;
  self->_event = incidentCopy;
  v15 = incidentCopy;

  details = self->_details;
  self->_details = detailsCopy;
  v17 = detailsCopy;

  origin = self->_origin;
  self->_origin = originCopy;
  v19 = originCopy;

  component = self->_component;
  self->_component = componentCopy;

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

+ (id)getEventString:(unsigned __int16)string
{
  if ((string - 13) > 0x14)
  {
    return @"UNKNOWN_MONITORING_EVENT";
  }

  else
  {
    return off_279CA5530[(string - 13)];
  }
}

- (SPRMonitorLog)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_logType = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"logType", v6, v7);
  v8 = objc_opt_class();
  v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"event", v10);
  event = self->_event;
  self->_event = v11;

  v13 = objc_opt_class();
  v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"details", v15);
  details = self->_details;
  self->_details = v16;

  v18 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"origin", v20);
  origin = self->_origin;
  self->_origin = v21;

  v23 = objc_opt_class();
  v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v23, @"component", v25);

  component = self->_component;
  self->_component = v26;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  logType = self->_logType;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, logType, @"logType", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_event, @"event", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_details, @"details", v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_origin, @"origin", v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_component, @"component", v14);
}

@end