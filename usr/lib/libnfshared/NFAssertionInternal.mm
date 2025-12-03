@interface NFAssertionInternal
- (BOOL)isEqual:(id)equal;
- (NFAssertionInternal)initWithCoder:(id)coder;
- (NFAssertionInternal)initWithDictionary:(id)dictionary;
- (id)description;
- (id)sessionID;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFAssertionInternal

- (id)description
{
  assertionType = self->_assertionType;
  if (assertionType > 7)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_278872A28[assertionType];
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Assertion Type = %@ for PID %d, taken at %@", v3, self->_pid, self->_assertionTimeString);
}

- (NFAssertionInternal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = NFAssertionInternal;
  v6 = [(NFAssertionInternal *)&v22 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"NFAssertionType");
    v6->_assertionType = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

    v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, @"NFAssertionPID");
    v6->_pid = objc_msgSend_intValue(v11, v12, v13);

    v15 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, @"NFAssertionTime");
    assertionTime = v6->_assertionTime;
    v6->_assertionTime = v15;

    v19 = objc_msgSend_description(v6->_assertionTime, v17, v18);
    assertionTimeString = v6->_assertionTimeString;
    v6->_assertionTimeString = v19;
  }

  return v6;
}

- (NFAssertionInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NFAssertionInternal;
  v6 = [(NFAssertionInternal *)&v17 init];
  if (v6)
  {
    v6->_assertionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"NFAssertionType");
    v6->_pid = objc_msgSend_decodeInt32ForKey_(coderCopy, v7, @"NFAssertionPID");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"NFAssertionTime");
    assertionTime = v6->_assertionTime;
    v6->_assertionTime = v10;

    v12 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"NFAssertionTimeString");
    assertionTimeString = v6->_assertionTimeString;
    v6->_assertionTimeString = v14;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  assertionType = self->_assertionType;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, assertionType, @"NFAssertionType");
  objc_msgSend_encodeInt32_forKey_(coderCopy, v6, self->_pid, @"NFAssertionPID");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_assertionTime, @"NFAssertionTime");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_assertionTimeString, @"NFAssertionTimeString");
}

- (id)sessionID
{
  if (self->_assertionType)
  {
    v4 = 0;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    pid = self->_pid;
    objc_msgSend_timeIntervalSince1970(self->_assertionTime, a2, v2);
    v4 = objc_msgSend_stringWithFormat_(v6, v8, @"Assertion-PowerUp-%d-%lf", pid, v9);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (assertionType = self->_assertionType, assertionType == objc_msgSend_assertionType(equalCopy, v5, v6)) && (pid = self->_pid, pid == objc_msgSend_pid(equalCopy, v8, v9)))
    {
      assertionTime = self->_assertionTime;
      v14 = objc_msgSend_assertionTime(equalCopy, v11, v12);
      isEqual = objc_msgSend_isEqual_(assertionTime, v15, v14);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, self->_assertionType);
  v6 = objc_msgSend_hash(v3, v4, v5);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v7, self->_pid);
  v11 = objc_msgSend_hash(v8, v9, v10) ^ v6;
  v14 = objc_msgSend_hash(self->_assertionTime, v12, v13);

  return v11 ^ v14;
}

@end