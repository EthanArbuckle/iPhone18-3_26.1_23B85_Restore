@interface NSString(PhotosUI)
- (id)pu_stringByIndentingNewLines;
- (uint64_t)pu_platformAgnosticHash;
@end

@implementation NSString(PhotosUI)

- (uint64_t)pu_platformAgnosticHash
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = v2;
  v4 = v9;
  if (v2 >= 97)
  {
    [a1 getCharacters:v9 range:{0, 32}];
    [a1 getCharacters:&v10 range:{(v2 >> 1) - 16, 32}];
    [a1 getCharacters:&v11 range:{v2 - 32, 32}];
    v5 = &v12;
    v6 = &v12;
LABEL_5:
    v4 = v9;
    do
    {
      v3 = 67503105 * v3 + 16974593 * *v4 + 66049 * v4[1] + 257 * v4[2] + v4[3];
      v4 += 4;
    }

    while (v4 < v6);
    goto LABEL_9;
  }

  [a1 getCharacters:v9 range:{0, v2}];
  v5 = &v9[v2];
  if ((v2 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v6 = &v9[v2 & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

LABEL_9:
  while (v4 < v5)
  {
    v7 = *v4++;
    v3 = 257 * v3 + v7;
  }

  return (v3 << (v2 & 0x1F)) + v3;
}

- (id)pu_stringByIndentingNewLines
{
  v2 = [a1 mutableCopy];
  [v2 replaceOccurrencesOfString:@"\n" withString:@"\n\t" options:2 range:{0, objc_msgSend(a1, "length")}];

  return v2;
}

@end