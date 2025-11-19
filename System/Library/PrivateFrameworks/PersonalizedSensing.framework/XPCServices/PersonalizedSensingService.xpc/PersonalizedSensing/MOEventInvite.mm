@interface MOEventInvite
- (MOEventInvite)init;
- (MOEventInvite)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventInvite

- (MOEventInvite)init
{
  v3.receiver = self;
  v3.super_class = MOEventInvite;
  result = [(MOEventInvite *)&v3 init];
  if (result)
  {
    result->_inviteEventIsAllDay = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  inviteEventTitle = self->_inviteEventTitle;
  v5 = a3;
  [v5 encodeObject:inviteEventTitle forKey:@"inviteEventTitle"];
  [v5 encodeObject:self->_inviteEventPlaceName forKey:@"inviteEventPlaceName"];
  [v5 encodeObject:self->_inviteEventLocation forKey:@"inviteEventLocation"];
  [v5 encodeBool:self->_inviteEventIsAllDay forKey:@"inviteEventIsAllDay"];
  [v5 encodeObject:self->_inviteEventOrganizers forKey:@"inviteEventOrganizers"];
  [v5 encodeObject:self->_inviteEventAttendees forKey:@"inviteEventAttendees"];
}

- (MOEventInvite)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MOEventInvite;
  v5 = [(MOEventInvite *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventTitle"];
    inviteEventTitle = v5->_inviteEventTitle;
    v5->_inviteEventTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventPlaceName"];
    inviteEventPlaceName = v5->_inviteEventPlaceName;
    v5->_inviteEventPlaceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEventLocation"];
    inviteEventLocation = v5->_inviteEventLocation;
    v5->_inviteEventLocation = v10;

    v5->_inviteEventIsAllDay = [v4 decodeBoolForKey:@"inviteEventIsAllDay"];
    v12 = objc_autoreleasePoolPush();
    v13 = [NSSet alloc];
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"inviteEventOrganizers"];
    inviteEventOrganizers = v5->_inviteEventOrganizers;
    v5->_inviteEventOrganizers = v16;

    v18 = objc_autoreleasePoolPush();
    v19 = [NSSet alloc];
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"inviteEventAttendees"];
    inviteEventAttendees = v5->_inviteEventAttendees;
    v5->_inviteEventAttendees = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MOEventInvite);
  objc_storeStrong(&v4->_inviteEventTitle, self->_inviteEventTitle);
  objc_storeStrong(&v4->_inviteEventPlaceName, self->_inviteEventPlaceName);
  objc_storeStrong(&v4->_inviteEventLocation, self->_inviteEventLocation);
  v4->_inviteEventIsAllDay = self->_inviteEventIsAllDay;
  objc_storeStrong(&v4->_inviteEventOrganizers, self->_inviteEventOrganizers);
  objc_storeStrong(&v4->_inviteEventAttendees, self->_inviteEventAttendees);
  return v4;
}

- (id)description
{
  v2 = [(NSString *)self->_inviteEventTitle mask];
  v3 = [NSString stringWithFormat:@"invite event title, %@", v2];

  return v3;
}

@end