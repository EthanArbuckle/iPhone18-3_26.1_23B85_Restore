@interface PPAttendee
- (BOOL)isCurrentUser;
- (BOOL)isEqual:(id)a3;
- (NSString)emailAddress;
- (NSString)name;
- (NSURL)url;
- (PPAttendee)initWithCoder:(id)a3;
- (PPAttendee)initWithEKParticipant:(id)a3;
- (id)_plist;
- (id)description;
- (id)initWithIndex:(void *)a3 inBackingPlists:;
- (unint64_t)hash;
- (unsigned)status;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPAttendee

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"nam"];
  v4 = [v3 hash];

  v5 = [v2 objectForKeyedSubscript:@"eml"];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [v2 objectForKeyedSubscript:@"url"];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [v2 objectForKeyedSubscript:@"icu"];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [v2 objectForKeyedSubscript:@"sta"];
  v12 = [v11 hash] - v10 + 32 * v10;

  return v12;
}

- (id)_plist
{
  if (a1)
  {
    a1 = [*(a1 + 8) objectAtIndexedSubscript:*(a1 + 16)];
    v1 = vars8;
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PPAttendee *)self name];
  [v7 encodeObject:v4 forKey:@"nam"];

  v5 = [(PPAttendee *)self emailAddress];
  [v7 encodeObject:v5 forKey:@"eml"];

  v6 = [(PPAttendee *)self url];
  [v7 encodeObject:v6 forKey:@"url"];

  [v7 encodeBool:-[PPAttendee isCurrentUser](self forKey:{"isCurrentUser"), @"icu"}];
  [v7 encodeInt32:-[PPAttendee status](self forKey:{"status"), @"sta"}];
}

- (PPAttendee)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v8);
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"url"];
  if (v10)
  {
    v11 = [v4 decodeObjectOfClasses:v7 forKey:@"nam"];
    v12 = [v4 decodeObjectOfClasses:v7 forKey:@"eml"];
    self = -[PPAttendee initWithName:emailAddress:url:isCurrentUser:status:](self, "initWithName:emailAddress:url:isCurrentUser:status:", v11, v12, v10, [v4 decodeBoolForKey:@"icu"], objc_msgSend(v4, "decodeInt32ForKey:", @"sta"));

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPAttendee *)self name];
  v5 = [(PPAttendee *)self emailAddress];
  v6 = [v3 initWithFormat:@"<PPAttendee n:'%@' e:'%@'>", v4, v5];

  return v6;
}

- (unsigned)status
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"sta"];
  v4 = [v3 unsignedCharValue];

  return v4;
}

- (BOOL)isCurrentUser
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"icu"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSURL)url
{
  v4 = objc_alloc(MEMORY[0x1E695DFF8]);
  v5 = [(PPAttendee *)self _plist];
  v6 = [v5 objectForKeyedSubscript:@"url"];
  v7 = [v4 initWithString:v6];

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PPEvent.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  return v7;
}

- (NSString)emailAddress
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"eml"];

  return v3;
}

- (NSString)name
{
  v2 = [(PPAttendee *)self _plist];
  v3 = [v2 objectForKeyedSubscript:@"nam"];

  return v3;
}

- (PPAttendee)initWithEKParticipant:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 name];
  v7 = [v4 emailAddress];
  v8 = [v7 lowercaseString];
  v9 = [v4 URL];
  v10 = -[PPAttendee initWithName:emailAddress:url:isCurrentUser:status:](self, "initWithName:emailAddress:url:isCurrentUser:status:", v6, v8, v9, [v4 isCurrentUser], objc_msgSend(v4, "participantStatus"));

  objc_autoreleasePoolPop(v5);
  return v10;
}

- (id)initWithIndex:(void *)a3 inBackingPlists:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = PPAttendee;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[2] = a2;
      objc_storeStrong(v7 + 1, a3);
    }
  }

  return a1;
}

@end