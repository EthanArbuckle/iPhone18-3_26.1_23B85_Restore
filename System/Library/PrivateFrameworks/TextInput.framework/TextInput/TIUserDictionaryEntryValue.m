@interface TIUserDictionaryEntryValue
+ (id)valueWithEntry:(id)a3;
- (BOOL)matchesEntry:(id)a3;
- (NSString)description;
- (TIUserDictionaryEntryValue)initWithCoder:(id)a3;
- (id)shortcutForSorting;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIUserDictionaryEntryValue

- (id)shortcutForSorting
{
  v2 = [(TIUserDictionaryEntryValue *)self shortcut];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EF56D550;
  }

  v5 = v4;

  return v4;
}

- (BOOL)matchesEntry:(id)a3
{
  v4 = a3;
  v5 = [(TIUserDictionaryEntryValue *)self phrase];
  v6 = [v4 phrase];
  v7 = v6;
  if (v5)
  {
    v8 = [(TIUserDictionaryEntryValue *)self phrase];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = [(TIUserDictionaryEntryValue *)self shortcut];
  v11 = [v4 shortcut];
  v12 = v11;
  if (v10)
  {
    v13 = [(TIUserDictionaryEntryValue *)self shortcut];
    v14 = [v12 isEqualToString:v13];
  }

  else
  {
    v14 = v11 == 0;
  }

  return v9 & v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TIUserDictionaryEntryValue *)self shortcut];
  v5 = [(TIUserDictionaryEntryValue *)self phrase];
  v6 = [v3 stringWithFormat:@"{%@ => %@}", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  phrase = self->_phrase;
  v8 = v4;
  if (phrase)
  {
    [v4 encodeObject:phrase forKey:@"phrase"];
    v4 = v8;
  }

  shortcut = self->_shortcut;
  if (shortcut)
  {
    [v8 encodeObject:shortcut forKey:@"shortcut"];
    v4 = v8;
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    [v8 encodeObject:timestamp forKey:@"timestamp"];
    v4 = v8;
  }
}

- (TIUserDictionaryEntryValue)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TIUserDictionaryEntryValue;
  v5 = [(TIUserDictionaryEntryValue *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
    v7 = [v6 copy];
    phrase = v5->_phrase;
    v5->_phrase = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    v10 = [v9 copy];
    shortcut = v5->_shortcut;
    v5->_shortcut = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;
  }

  return v5;
}

+ (id)valueWithEntry:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 phrase];
  [v5 setPhrase:v6];

  v7 = [v4 shortcut];
  [v5 setShortcut:v7];

  v8 = [v4 timestamp];

  [v5 setTimestamp:v8];

  return v5;
}

@end