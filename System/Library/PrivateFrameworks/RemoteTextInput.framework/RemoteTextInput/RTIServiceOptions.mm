@interface RTIServiceOptions
+ (id)combinedServiceOptions:(id)options;
+ (id)defaultServiceOptions;
+ (id)defaultServiceOptionsForService:(id)service;
- (BOOL)isEqual:(id)equal;
- (RTIServiceOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTIServiceOptions

+ (id)defaultServiceOptions
{
  intValue = [MGCopyAnswer() intValue];
  v3 = 0;
  if ((intValue - 4) <= 7)
  {
    v3 = qword_19A2CBCA8[intValue - 4];
  }

  v4 = objc_alloc_init(RTIServiceOptions);
  v4->_serviceDeviceClass = intValue;
  v4->_displayOptions = v3;

  return v4;
}

+ (id)defaultServiceOptionsForService:(id)service
{
  serviceCopy = service;
  defaultServiceOptions = [self defaultServiceOptions];
  v6 = defaultServiceOptions;
  if (serviceCopy)
  {
    serviceDeviceClass = [defaultServiceOptions serviceDeviceClass];
    displayOptions = [v6 displayOptions];
    if (([serviceCopy isEqualToString:@"com.apple.rti-screencontinuity"] & 1) != 0 || objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.iosmac.remote-text-editing"))
    {
      displayOptions |= 4uLL;
    }

    else if (([serviceCopy isEqualToString:@"com.apple.rapport.remote-text-input"] & 1) != 0 || objc_msgSend(serviceCopy, "isEqualToString:", @"com.apple.remote-text-editing-legacy"))
    {
      displayOptions |= 1uLL;
    }

    v9 = objc_alloc_init(RTIServiceOptions);
    v9->_serviceDeviceClass = serviceDeviceClass;
    v9->_displayOptions = displayOptions;
  }

  else
  {
    v9 = defaultServiceOptions;
  }

  return v9;
}

+ (id)combinedServiceOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy count])
  {
    if ([optionsCopy count] == 1)
    {
      anyObject = [optionsCopy anyObject];
      v5 = [anyObject copy];
    }

    else
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__2;
      v12 = __Block_byref_object_dispose__2;
      v13 = objc_alloc_init(RTIServiceOptions);
      *(v9[5] + 8) = -1;
      *(v9[5] + 16) = 0;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __44__RTIServiceOptions_combinedServiceOptions___block_invoke;
      v7[3] = &unk_1E7514BE0;
      v7[4] = &v8;
      [optionsCopy enumerateObjectsUsingBlock:v7];
      v5 = v9[5];
      _Block_object_dispose(&v8, 8);
    }
  }

  else
  {
    v5 = objc_alloc_init(RTIServiceOptions);
    v5->_serviceDeviceClass = -1;
    v5->_displayOptions = 0;
  }

  return v5;
}

uint64_t __44__RTIServiceOptions_combinedServiceOptions___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 displayOptions];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  *(v4 + 16) |= result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeInteger:self->_serviceDeviceClass forKey:@"deviceClass"];
  [coderCopy encodeInteger:self->_displayOptions forKey:@"displayOptions"];
}

- (RTIServiceOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v7.receiver = self;
  v7.super_class = RTIServiceOptions;
  v5 = [(RTIServiceOptions *)&v7 init];
  if (v5)
  {
    v5->_serviceDeviceClass = [coderCopy decodeIntegerForKey:@"deviceClass"];
    v5->_displayOptions = [coderCopy decodeIntegerForKey:@"displayOptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[RTIServiceOptions allocWithZone:?]];
  *(result + 2) = self->_serviceDeviceClass;
  *(result + 2) = self->_displayOptions;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serviceDeviceClass = [(RTIServiceOptions *)self serviceDeviceClass];
      if (serviceDeviceClass == [(RTIServiceOptions *)v5 serviceDeviceClass])
      {
        displayOptions = [(RTIServiceOptions *)self displayOptions];
        v8 = displayOptions == [(RTIServiceOptions *)v5 displayOptions];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = [(RTIServiceOptions *)self serviceDeviceClass]- 1;
  if (v4 > 0xA)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7514C00[v4];
  }

  [v3 appendFormat:@"; deviceClass = %@", v5];
  [v3 appendFormat:@"; displayOptions = %lu", -[RTIServiceOptions displayOptions](self, "displayOptions")];

  return v3;
}

@end