@interface RENowPlayingRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (RENowPlayingRelevanceProvider)initWithDictionary:(id)dictionary;
- (RENowPlayingRelevanceProvider)initWithState:(unint64_t)state bundleIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation RENowPlayingRelevanceProvider

- (RENowPlayingRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];

  v8 = -[RENowPlayingRelevanceProvider initWithState:bundleIdentifier:itemIdentifier:](self, "initWithState:bundleIdentifier:itemIdentifier:", [v5 unsignedIntegerValue], v6, v7);
  return v8;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_state];
  [dictionary setObject:v4 forKeyedSubscript:@"state"];

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  }

  itemIdentifer = self->_itemIdentifer;
  if (itemIdentifer)
  {
    [dictionary setObject:itemIdentifer forKeyedSubscript:@"itemIdentifier"];
  }

  v7 = [dictionary copy];

  return v7;
}

- (RENowPlayingRelevanceProvider)initWithState:(unint64_t)state bundleIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier
{
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  v17.receiver = self;
  v17.super_class = RENowPlayingRelevanceProvider;
  v10 = [(RERelevanceProvider *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [itemIdentifierCopy copy];
    itemIdentifer = v11->_itemIdentifer;
    v11->_itemIdentifer = v14;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  state = self->_state;
  bundleIdentifier = self->_bundleIdentifier;
  itemIdentifer = self->_itemIdentifer;

  return [v4 initWithState:state bundleIdentifier:bundleIdentifier itemIdentifier:itemIdentifer];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RENowPlayingRelevanceProvider;
    if ([(RERelevanceProvider *)&v17 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        v6 = v5;
        if (self->_state == v5->_state)
        {
          bundleIdentifier = v5->_bundleIdentifier;
          v8 = self->_bundleIdentifier;
          v9 = v8;
          if (v8 == bundleIdentifier)
          {
          }

          else
          {
            v10 = [(NSString *)v8 isEqual:bundleIdentifier];

            if (!v10)
            {
              goto LABEL_7;
            }
          }

          itemIdentifer = self->_itemIdentifer;
          v13 = v6->_itemIdentifer;
          v14 = itemIdentifer;
          v15 = v14;
          if (v14 == v13)
          {
            v11 = 1;
          }

          else
          {
            v11 = [(NSString *)v14 isEqual:v13];
          }

          goto LABEL_15;
        }

LABEL_7:
        v11 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (unint64_t)_hash
{
  state = self->_state;
  v4 = [(NSString *)self->_itemIdentifer hash]^ state;
  return v4 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RENowPlayingRelevanceProvider;
  v3 = [(RENowPlayingRelevanceProvider *)&v7 description];
  bundleIdentifier = self->_bundleIdentifier;
  v5 = [v3 stringByAppendingFormat:@" state=%lu, bundleIdentifier=%@, itemIdentifier=%@", self->_state, bundleIdentifier, self->_itemIdentifer];

  return v5;
}

@end