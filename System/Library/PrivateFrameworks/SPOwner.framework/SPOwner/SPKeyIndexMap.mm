@interface SPKeyIndexMap
- (SPKeyIndexMap)init;
- (SPKeyIndexMap)initWithBeaconIdentifier:(id)identifier keySequence:(unsigned __int8)sequence mapHandle:(id *)handle;
- (id)headerString;
- (void)dealloc;
@end

@implementation SPKeyIndexMap

- (SPKeyIndexMap)init
{
  [(SPKeyIndexMap *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  sp_key_index_map_destroy(self->_mapHandle);
  v3.receiver = self;
  v3.super_class = SPKeyIndexMap;
  [(SPKeyIndexMap *)&v3 dealloc];
}

- (SPKeyIndexMap)initWithBeaconIdentifier:(id)identifier keySequence:(unsigned __int8)sequence mapHandle:(id *)handle
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SPKeyIndexMap;
  v10 = [(SPKeyIndexMap *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_beaconIdentifier, identifier);
    v11->_sequence = sequence;
    v11->_mapHandle = handle;
  }

  return v11;
}

- (id)headerString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"version: %u, ", sp_key_index_map_get_version(self->_mapHandle)];
  [v3 appendFormat:@"first-index: %u, ", sp_key_index_map_get_first_index(self->_mapHandle)];
  [v3 appendFormat:@"last-index: %u, ", sp_key_index_map_get_last_index(self->_mapHandle)];

  return v3;
}

@end