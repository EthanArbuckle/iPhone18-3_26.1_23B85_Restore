@interface SXTextComponentBlueprint
- (id)copyWithZone:(_NSZone *)zone;
- (void)addExclusionPath:(id)path forIdentifier:(id)identifier;
- (void)invalidateSize;
@end

@implementation SXTextComponentBlueprint

- (void)addExclusionPath:(id)path forIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  dictionary = [(NSDictionary *)self->_exclusionPaths mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  [dictionary setObject:pathCopy forKey:identifierCopy];
  v8 = [dictionary copy];
  exclusionPaths = self->_exclusionPaths;
  self->_exclusionPaths = v8;
}

- (void)invalidateSize
{
  v4.receiver = self;
  v4.super_class = SXTextComponentBlueprint;
  [(SXComponentBlueprint *)&v4 invalidateSize];
  exclusionPaths = self->_exclusionPaths;
  self->_exclusionPaths = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SXTextComponentBlueprint;
  v4 = [(SXComponentBlueprint *)&v8 copyWithZone:zone];
  exclusionPaths = [(SXTextComponentBlueprint *)self exclusionPaths];
  v6 = v4[48];
  v4[48] = exclusionPaths;

  return v4;
}

@end