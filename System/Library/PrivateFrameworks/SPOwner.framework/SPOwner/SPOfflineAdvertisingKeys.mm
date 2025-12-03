@interface SPOfflineAdvertisingKeys
- (NSDictionary)dictionaryRepresentation;
- (SPOfflineAdvertisingKeys)initWithCoder:(id)coder;
- (SPOfflineAdvertisingKeys)initWithInterval:(int64_t)interval keys:(id)keys;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPOfflineAdvertisingKeys

- (SPOfflineAdvertisingKeys)initWithInterval:(int64_t)interval keys:(id)keys
{
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = SPOfflineAdvertisingKeys;
  v7 = [(SPOfflineAdvertisingKeys *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_rotationInterval = interval;
    v9 = [keysCopy copy];
    keys = v8->_keys;
    v8->_keys = v9;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SPOfflineAdvertisingKeys rotationInterval](self forKey:{"rotationInterval"), @"interval"}];
  keys = [(SPOfflineAdvertisingKeys *)self keys];
  [coderCopy encodeObject:keys forKey:@"keys"];
}

- (SPOfflineAdvertisingKeys)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  self->_rotationInterval = [coderCopy decodeIntegerForKey:@"interval"];
  v5 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"keys"];

  keys = self->_keys;
  self->_keys = v8;

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  rotationInterval = [(SPOfflineAdvertisingKeys *)self rotationInterval];
  keys = [(SPOfflineAdvertisingKeys *)self keys];
  v7 = [v3 stringWithFormat:@"<%@: %p interval: %lu, keys: %lu]>", v4, self, rotationInterval, objc_msgSend(keys, "count")];

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CBDF30];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SPOfflineAdvertisingKeys rotationInterval](self, "rotationInterval")}];
  v9[0] = v3;
  v8[1] = *MEMORY[0x277CBDF28];
  keys = [(SPOfflineAdvertisingKeys *)self keys];
  v9[1] = keys;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end