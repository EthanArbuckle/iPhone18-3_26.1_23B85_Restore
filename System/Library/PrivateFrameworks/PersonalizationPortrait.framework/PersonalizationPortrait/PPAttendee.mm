@interface PPAttendee
- (BOOL)isCurrentUser;
- (BOOL)isEqual:(id)equal;
- (NSString)emailAddress;
- (NSString)name;
- (NSURL)url;
- (PPAttendee)initWithCoder:(id)coder;
- (PPAttendee)initWithEKParticipant:(id)participant;
- (id)_plist;
- (id)description;
- (id)initWithIndex:(void *)index inBackingPlists:;
- (unint64_t)hash;
- (unsigned)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPAttendee

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      v7 = [(NSArray *)self->_backingPlists objectAtIndexedSubscript:self->_indexInBackingPlists];
      v8 = [v6[1] objectAtIndexedSubscript:v6[2]];
      LOBYTE(self) = [v7 isEqual:v8];
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (unint64_t)hash
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"nam"];
  v4 = [v3 hash];

  v5 = [_plist objectForKeyedSubscript:@"eml"];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [_plist objectForKeyedSubscript:@"url"];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [_plist objectForKeyedSubscript:@"icu"];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [_plist objectForKeyedSubscript:@"sta"];
  v12 = [v11 hash] - v10 + 32 * v10;

  return v12;
}

- (id)_plist
{
  if (self)
  {
    self = [*(self + 8) objectAtIndexedSubscript:*(self + 16)];
    v1 = vars8;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PPAttendee *)self name];
  [coderCopy encodeObject:name forKey:@"nam"];

  emailAddress = [(PPAttendee *)self emailAddress];
  [coderCopy encodeObject:emailAddress forKey:@"eml"];

  v6 = [(PPAttendee *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];

  [coderCopy encodeBool:-[PPAttendee isCurrentUser](self forKey:{"isCurrentUser"), @"icu"}];
  [coderCopy encodeInt32:-[PPAttendee status](self forKey:{"status"), @"sta"}];
}

- (PPAttendee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"url"];
  if (v10)
  {
    v11 = [coderCopy decodeObjectOfClasses:v7 forKey:@"nam"];
    v12 = [coderCopy decodeObjectOfClasses:v7 forKey:@"eml"];
    self = -[PPAttendee initWithName:emailAddress:url:isCurrentUser:status:](self, "initWithName:emailAddress:url:isCurrentUser:status:", v11, v12, v10, [coderCopy decodeBoolForKey:@"icu"], objc_msgSend(coderCopy, "decodeInt32ForKey:", @"sta"));

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v5);
  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(PPAttendee *)self name];
  emailAddress = [(PPAttendee *)self emailAddress];
  v6 = [v3 initWithFormat:@"<PPAttendee n:'%@' e:'%@'>", name, emailAddress];

  return v6;
}

- (unsigned)status
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"sta"];
  unsignedCharValue = [v3 unsignedCharValue];

  return unsignedCharValue;
}

- (BOOL)isCurrentUser
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"icu"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSURL)url
{
  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  _plist = [(PPAttendee *)self _plist];
  v6 = [_plist objectForKeyedSubscript:@"url"];
  v7 = [v4 initWithString:v6];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  return v7;
}

- (NSString)emailAddress
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"eml"];

  return v3;
}

- (NSString)name
{
  _plist = [(PPAttendee *)self _plist];
  v3 = [_plist objectForKeyedSubscript:@"nam"];

  return v3;
}

- (PPAttendee)initWithEKParticipant:(id)participant
{
  participantCopy = participant;
  v5 = objc_autoreleasePoolPush();
  name = [participantCopy name];
  emailAddress = [participantCopy emailAddress];
  lowercaseString = [emailAddress lowercaseString];
  v9 = [participantCopy URL];
  v10 = -[PPAttendee initWithName:emailAddress:url:isCurrentUser:status:](self, "initWithName:emailAddress:url:isCurrentUser:status:", name, lowercaseString, v9, [participantCopy isCurrentUser], objc_msgSend(participantCopy, "participantStatus"));

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (id)initWithIndex:(void *)index inBackingPlists:
{
  indexCopy = index;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = PPAttendee;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      v7[2] = a2;
      objc_storeStrong(v7 + 1, index);
    }
  }

  return self;
}

@end