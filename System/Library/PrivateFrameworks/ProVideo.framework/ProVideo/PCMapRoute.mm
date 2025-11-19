@interface PCMapRoute
+ (id)decodeFromBlindChannelData:(id)a3;
- (PCMapRoute)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsBlindChannelData;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCMapRoute

- (PCMapRoute)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PCMapRoute;
  v4 = [(PCMapRoute *)&v6 init];
  if (v4)
  {
    -[PCMapRoute setStartLocation:](v4, "setStartLocation:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"]);
    -[PCMapRoute setEndLocation:](v4, "setEndLocation:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"endLocation"]);
    -[PCMapRoute setHasEndLocation:](v4, "setHasEndLocation:", [a3 decodeBoolForKey:@"hasEndLocation"]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCMapRoute;
  [(PCMapRoute *)&v3 dealloc];
}

+ (id)decodeFromBlindChannelData:(id)a3
{
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a3 error:&v6];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Custom Data"];
  if (!v4)
  {
    v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Custom Data"];
  }

  [v3 finishDecoding];

  return v4;
}

- (id)encodeAsBlindChannelData
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:@"Custom Data"];
  v4 = [v3 encodedData];
  [v3 finishEncoding];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStartLocation:{-[PCMapLocation copy](self->_startLocation, "copy")}];
  [v4 setEndLocation:{-[PCMapLocation copy](self->_endLocation, "copy")}];
  [v4 setHasEndLocation:self->_hasEndLocation];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_startLocation forKey:@"startLocation"];
  [a3 encodeObject:self->_endLocation forKey:@"endLocation"];
  if (self->_hasEndLocation)
  {

    [a3 encodeBool:1 forKey:@"hasEndLocation"];
  }
}

@end