@interface SFWeatherTopic
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFWeatherTopic)initWithCoder:(id)coder;
- (SFWeatherTopic)initWithQuery:(id)query location:(id)location identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFWeatherTopic

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = SFWeatherTopic;
  v3 = [(SFQueryTopic *)&v13 description];
  v4 = MEMORY[0x1E696AEC0];
  location = [(SFWeatherTopic *)self location];
  [location lat];
  v7 = v6;
  location2 = [(SFWeatherTopic *)self location];
  [location2 lng];
  v10 = [v4 stringWithFormat:@" lat: %f long: %f", v7, v9];
  v11 = [v3 stringByAppendingString:v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = SFWeatherTopic;
  if ([(SFQueryTopic *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    location = [(SFWeatherTopic *)self location];
    [location lat];
    v8 = v7;
    location2 = [v5 location];
    [location2 lat];
    if (v8 == v10)
    {
      location3 = [(SFWeatherTopic *)self location];
      [location3 lng];
      v13 = v12;
      location4 = [v5 location];
      [location4 lng];
      v16 = v13 == v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFWeatherTopic;
  v3 = [(SFQueryTopic *)&v13 hash];
  [(SFLatLng *)self->_location lat];
  v12 = v4;
  [(SFLatLng *)self->_location lng];
  v5.f64[0] = v12;
  v5.f64[1] = v6;
  v7 = vbslq_s8(vcltzq_f64(v5), vnegq_f64(v5), v5);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vrndaq_f64(v7);
  v10 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(vnegq_f64(v8), vmlaq_f64(v9, vdupq_n_s64(0xC3F0000000000000), vrndq_f64(vmulq_f64(v9, vdupq_n_s64(0x3BF0000000000000uLL)))), v9), vdupq_n_s64(0x41E3C6EF36200000uLL))), vcvtq_n_u64_f64(vsubq_f64(v7, v9), 0x40uLL));
  return v10.i64[0] ^ v3 ^ v10.i64[1];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFWeatherTopic;
  coderCopy = coder;
  [(SFQueryTopic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_location forKey:{@"_location", v5.receiver, v5.super_class}];
}

- (SFWeatherTopic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFWeatherTopic;
  v5 = [(SFQueryTopic *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_location"];
    location = v5->_location;
    v5->_location = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SFWeatherTopic;
  v4 = [(SFQueryTopic *)&v7 copyWithZone:zone];
  location = [(SFWeatherTopic *)self location];
  [v4 setLocation:location];

  return v4;
}

- (SFWeatherTopic)initWithQuery:(id)query location:(id)location identifier:(id)identifier
{
  locationCopy = location;
  v12.receiver = self;
  v12.super_class = SFWeatherTopic;
  v9 = [(SFQueryTopic *)&v12 initWithType:4 query:query identifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(SFWeatherTopic *)v9 setLocation:locationCopy];
  }

  return v10;
}

@end