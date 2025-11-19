@interface KTStaticKeyPeer
+ (id)stripIMPrefix:(id)a3;
- (KTStaticKeyPeer)initWithCoder:(id)a3;
- (KTStaticKeyPeer)initWithPeer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setOtherNamesForPeer:(id)a3;
@end

@implementation KTStaticKeyPeer

+ (id)stripIMPrefix:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"im://"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"im://", "length")}];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (KTStaticKeyPeer)initWithPeer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = KTStaticKeyPeer;
  v5 = [(KTStaticKeyPeer *)&v10 init];
  if (v5)
  {
    v6 = [objc_opt_class() stripIMPrefix:v4];
    [(KTStaticKeyPeer *)v5 setPeer:v6];

    v7 = [MEMORY[0x1E695DFD8] set];
    [(KTStaticKeyPeer *)v5 setOtherNamesForPeer:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(KTStaticKeyPeer *)self peer];
  [v9 encodeObject:v4 forKey:@"peer"];

  v5 = [(KTStaticKeyPeer *)self otherNamesForPeer];
  v6 = [v5 allObjects];
  [v9 encodeObject:v6 forKey:@"otherNames"];

  v7 = [(KTStaticKeyPeer *)self lastUsedAddressOfMe];

  if (v7)
  {
    v8 = [(KTStaticKeyPeer *)self lastUsedAddressOfMe];
    [v9 encodeObject:v8 forKey:@"lastUsed"];
  }
}

- (KTStaticKeyPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KTStaticKeyPeer;
  v5 = [(KTStaticKeyPeer *)&v13 init];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"peer"], v6 = objc_claimAutoreleasedReturnValue(), -[KTStaticKeyPeer setPeer:](v5, "setPeer:", v6), v6, -[KTStaticKeyPeer peer](v5, "peer"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"otherNames"];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
      [(KTStaticKeyPeer *)v5 setOtherNamesForPeer:v9];
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsed"];
    [(KTStaticKeyPeer *)v5 setLastUsedAddressOfMe:v10];

    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setOtherNamesForPeer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() stripIMPrefix:{*(*(&v14 + 1) + 8 * v10), v14}];
        [(NSSet *)v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  otherNames = self->_otherNames;
  self->_otherNames = v5;

  v13 = *MEMORY[0x1E69E9840];
}

@end