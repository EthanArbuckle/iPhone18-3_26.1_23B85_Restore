@interface NSCoder(RBSXPCCoderExtras)
- (id)decodeCollectionOfClass:()RBSXPCCoderExtras containingClass:forKey:;
- (id)decodeStringForKey:()RBSXPCCoderExtras;
- (void)encodeCollection:()RBSXPCCoderExtras forKey:;
@end

@implementation NSCoder(RBSXPCCoderExtras)

- (void)encodeCollection:()RBSXPCCoderExtras forKey:
{
  v6 = a4;
  v7 = [a3 objectEnumerator];
  v8 = [v7 allObjects];

  [a1 encodeObject:v8 forKey:v6];
}

- (id)decodeCollectionOfClass:()RBSXPCCoderExtras containingClass:forKey:
{
  v8 = MEMORY[0x1E695DFD8];
  v9 = a5;
  v10 = [v8 setWithObjects:{objc_opt_class(), a4, 0}];
  v11 = [a1 decodeObjectOfClasses:v10 forKey:v9];

  v12 = 0;
  if (_NSIsNSArray())
  {
    v12 = [[a3 alloc] initWithArray:v11];
  }

  return v12;
}

- (id)decodeStringForKey:()RBSXPCCoderExtras
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

@end