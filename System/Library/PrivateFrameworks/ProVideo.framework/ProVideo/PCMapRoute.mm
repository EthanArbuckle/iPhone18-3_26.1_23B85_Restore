@interface PCMapRoute
+ (id)decodeFromBlindChannelData:(id)data;
- (PCMapRoute)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsBlindChannelData;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCMapRoute

- (PCMapRoute)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PCMapRoute;
  v4 = [(PCMapRoute *)&v6 init];
  if (v4)
  {
    -[PCMapRoute setStartLocation:](v4, "setStartLocation:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"startLocation"]);
    -[PCMapRoute setEndLocation:](v4, "setEndLocation:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"endLocation"]);
    -[PCMapRoute setHasEndLocation:](v4, "setHasEndLocation:", [coder decodeBoolForKey:@"hasEndLocation"]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCMapRoute;
  [(PCMapRoute *)&v3 dealloc];
}

+ (id)decodeFromBlindChannelData:(id)data
{
  v6 = 0;
  v3 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:data error:&v6];
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
  encodedData = [v3 encodedData];
  [v3 finishEncoding];

  return encodedData;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStartLocation:{-[PCMapLocation copy](self->_startLocation, "copy")}];
  [v4 setEndLocation:{-[PCMapLocation copy](self->_endLocation, "copy")}];
  [v4 setHasEndLocation:self->_hasEndLocation];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_startLocation forKey:@"startLocation"];
  [coder encodeObject:self->_endLocation forKey:@"endLocation"];
  if (self->_hasEndLocation)
  {

    [coder encodeBool:1 forKey:@"hasEndLocation"];
  }
}

@end