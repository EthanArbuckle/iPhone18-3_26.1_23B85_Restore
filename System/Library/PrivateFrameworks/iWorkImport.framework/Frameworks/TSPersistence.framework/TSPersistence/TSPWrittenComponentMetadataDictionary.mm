@interface TSPWrittenComponentMetadataDictionary
- (TSPWrittenComponentMetadataDictionary)init;
- (TSPWrittenComponentMetadataDictionary)initWithCapacity:(unint64_t)capacity;
- (id)metadataForComponentIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)enumerateMetadataUsingBlock:(id)block;
- (void)setMetadata:(id)metadata forComponentIdentifier:(int64_t)identifier;
@end

@implementation TSPWrittenComponentMetadataDictionary

- (TSPWrittenComponentMetadataDictionary)init
{
  v3.receiver = self;
  v3.super_class = TSPWrittenComponentMetadataDictionary;
  if ([(TSPWrittenComponentMetadataDictionary *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (TSPWrittenComponentMetadataDictionary)initWithCapacity:(unint64_t)capacity
{
  v4.receiver = self;
  v4.super_class = TSPWrittenComponentMetadataDictionary;
  if ([(TSPWrittenComponentMetadataDictionary *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    v4 = sub_2769ABBE4(map);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPWrittenComponentMetadataDictionary;
  [(TSPWrittenComponentMetadataDictionary *)&v5 dealloc];
}

- (void)setMetadata:(id)metadata forComponentIdentifier:(int64_t)identifier
{
  metadata;
  map = self->_map;
  sub_2769DB7AC();
}

- (id)metadataForComponentIdentifier:(int64_t)identifier
{
  identifierCopy = identifier;
  v3 = sub_2769ABC64(self->_map, &identifierCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)enumerateMetadataUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v6 = 0;
    v5 = self->_map + 16;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      (*(blockCopy + 2))(blockCopy, v5[2], v5[3], &v6);
    }

    while ((v6 & 1) == 0);
  }
}

@end