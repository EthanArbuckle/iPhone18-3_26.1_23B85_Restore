@interface VUIMediaItemCredits
- (BOOL)hasCredits;
- (BOOL)isEqual:(id)equal;
- (NSOrderedSet)cast;
- (NSOrderedSet)directors;
- (NSOrderedSet)producers;
- (NSOrderedSet)screenwriters;
- (VUIMediaItemCredits)initWithStringRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)stringRepresentation;
- (unint64_t)hash;
@end

@implementation VUIMediaItemCredits

- (NSOrderedSet)cast
{
  cast = self->_cast;
  if (!cast)
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_cast;
    self->_cast = orderedSet;

    cast = self->_cast;
  }

  return cast;
}

- (NSOrderedSet)directors
{
  directors = self->_directors;
  if (!directors)
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_directors;
    self->_directors = orderedSet;

    directors = self->_directors;
  }

  return directors;
}

- (NSOrderedSet)producers
{
  producers = self->_producers;
  if (!producers)
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_producers;
    self->_producers = orderedSet;

    producers = self->_producers;
  }

  return producers;
}

- (NSOrderedSet)screenwriters
{
  screenwriters = self->_screenwriters;
  if (!screenwriters)
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_screenwriters;
    self->_screenwriters = orderedSet;

    screenwriters = self->_screenwriters;
  }

  return screenwriters;
}

- (BOOL)hasCredits
{
  cast = [(VUIMediaItemCredits *)self cast];
  v4 = [cast count];
  directors = [(VUIMediaItemCredits *)self directors];
  v6 = [directors count] + v4;
  producers = [(VUIMediaItemCredits *)self producers];
  v8 = v6 + [producers count];
  screenwriters = [(VUIMediaItemCredits *)self screenwriters];
  v10 = [screenwriters count];

  return v8 + v10 != 0;
}

- (VUIMediaItemCredits)initWithStringRepresentation:(id)representation
{
  v4 = MEMORY[0x1E696AB08];
  representationCopy = representation;
  v6 = [v4 characterSetWithCharactersInString:{@", "}];
  v7 = [representationCopy componentsSeparatedByCharactersInSet:v6];

  if ([v7 count] != 4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The string representation must contain exactly four components"];
  }

  v8 = [v7 objectAtIndex:0];
  v9 = [objc_opt_class() _arrayFromStringRepresentation:v8];
  v10 = [v7 objectAtIndex:1];

  v11 = [objc_opt_class() _arrayFromStringRepresentation:v10];
  v12 = [v7 objectAtIndex:2];

  v13 = [objc_opt_class() _arrayFromStringRepresentation:v12];
  v14 = [v7 objectAtIndex:3];

  v15 = [objc_opt_class() _arrayFromStringRepresentation:v14];
  v16 = [(VUIMediaItemCredits *)self init];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v9];
    cast = v16->_cast;
    v16->_cast = v17;

    v19 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v11];
    directors = v16->_directors;
    v16->_directors = v19;

    v21 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v13];
    producers = v16->_producers;
    v16->_producers = v21;

    v23 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v15];
    screenwriters = v16->_screenwriters;
    v16->_screenwriters = v23;
  }

  return v16;
}

- (id)stringRepresentation
{
  v3 = objc_opt_class();
  cast = [(VUIMediaItemCredits *)self cast];
  array = [cast array];
  v6 = [v3 _stringRepresentationFromArray:array];

  v7 = objc_opt_class();
  directors = [(VUIMediaItemCredits *)self directors];
  array2 = [directors array];
  v10 = [v7 _stringRepresentationFromArray:array2];

  v11 = objc_opt_class();
  producers = [(VUIMediaItemCredits *)self producers];
  array3 = [producers array];
  v14 = [v11 _stringRepresentationFromArray:array3];

  v15 = objc_opt_class();
  screenwriters = [(VUIMediaItemCredits *)self screenwriters];
  array4 = [screenwriters array];
  v18 = [v15 _stringRepresentationFromArray:array4];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@, %@", v6, v10, v14, v18];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIMediaItemCredits);
  v5 = [(NSOrderedSet *)self->_cast copy];
  cast = v4->_cast;
  v4->_cast = v5;

  v7 = [(NSOrderedSet *)self->_directors copy];
  directors = v4->_directors;
  v4->_directors = v7;

  v9 = [(NSOrderedSet *)self->_producers copy];
  producers = v4->_producers;
  v4->_producers = v9;

  v11 = [(NSOrderedSet *)self->_screenwriters copy];
  screenwriters = v4->_screenwriters;
  v4->_screenwriters = v11;

  return v4;
}

- (unint64_t)hash
{
  cast = [(VUIMediaItemCredits *)self cast];
  v4 = [cast hash];

  directors = [(VUIMediaItemCredits *)self directors];
  v6 = [directors hash] ^ v4;

  producers = [(VUIMediaItemCredits *)self producers];
  v8 = [producers hash];

  screenwriters = [(VUIMediaItemCredits *)self screenwriters];
  v10 = v8 ^ [screenwriters hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        cast = [(VUIMediaItemCredits *)self cast];
        cast2 = [(VUIMediaItemCredits *)v6 cast];
        v9 = cast;
        v10 = cast2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_29;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        directors = [(VUIMediaItemCredits *)self directors];
        directors2 = [(VUIMediaItemCredits *)v6 directors];
        v9 = directors;
        v16 = directors2;
        v11 = v16;
        if (v9 == v16)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v16)
          {
            goto LABEL_29;
          }

          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        producers = [(VUIMediaItemCredits *)self producers];
        producers2 = [(VUIMediaItemCredits *)v6 producers];
        v9 = producers;
        v20 = producers2;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          screenwriters = [(VUIMediaItemCredits *)self screenwriters];
          screenwriters2 = [(VUIMediaItemCredits *)v6 screenwriters];
          v9 = screenwriters;
          v24 = screenwriters2;
          v11 = v24;
          if (v9 == v24)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0;
            if (v9 && v24)
            {
              v12 = [v9 isEqual:v24];
            }
          }

          goto LABEL_29;
        }

        v12 = 0;
        if (v9 && v20)
        {
          v21 = [v9 isEqual:v20];

          if ((v21 & 1) == 0)
          {
LABEL_22:
            v12 = 0;
LABEL_30:

            goto LABEL_31;
          }

          goto LABEL_24;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v12 = 0;
  }

LABEL_31:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21.receiver = self;
  v21.super_class = VUIMediaItemCredits;
  v4 = [(VUIMediaItemCredits *)&v21 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  cast = [(VUIMediaItemCredits *)self cast];
  v7 = [v5 stringWithFormat:@"%@=%@", @"cast", cast];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  directors = [(VUIMediaItemCredits *)self directors];
  v10 = [v8 stringWithFormat:@"%@=%@", @"directors", directors];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  producers = [(VUIMediaItemCredits *)self producers];
  v13 = [v11 stringWithFormat:@"%@=%@", @"producers", producers];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  screenwriters = [(VUIMediaItemCredits *)self screenwriters];
  v16 = [v14 stringWithFormat:@"%@=%@", @"screenwriters", screenwriters];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end