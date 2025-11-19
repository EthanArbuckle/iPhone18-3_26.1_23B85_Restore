@interface VUIMediaItemCredits
- (BOOL)hasCredits;
- (BOOL)isEqual:(id)a3;
- (NSOrderedSet)cast;
- (NSOrderedSet)directors;
- (NSOrderedSet)producers;
- (NSOrderedSet)screenwriters;
- (VUIMediaItemCredits)initWithStringRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_cast;
    self->_cast = v4;

    cast = self->_cast;
  }

  return cast;
}

- (NSOrderedSet)directors
{
  directors = self->_directors;
  if (!directors)
  {
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_directors;
    self->_directors = v4;

    directors = self->_directors;
  }

  return directors;
}

- (NSOrderedSet)producers
{
  producers = self->_producers;
  if (!producers)
  {
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_producers;
    self->_producers = v4;

    producers = self->_producers;
  }

  return producers;
}

- (NSOrderedSet)screenwriters
{
  screenwriters = self->_screenwriters;
  if (!screenwriters)
  {
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
    v5 = self->_screenwriters;
    self->_screenwriters = v4;

    screenwriters = self->_screenwriters;
  }

  return screenwriters;
}

- (BOOL)hasCredits
{
  v3 = [(VUIMediaItemCredits *)self cast];
  v4 = [v3 count];
  v5 = [(VUIMediaItemCredits *)self directors];
  v6 = [v5 count] + v4;
  v7 = [(VUIMediaItemCredits *)self producers];
  v8 = v6 + [v7 count];
  v9 = [(VUIMediaItemCredits *)self screenwriters];
  v10 = [v9 count];

  return v8 + v10 != 0;
}

- (VUIMediaItemCredits)initWithStringRepresentation:(id)a3
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 characterSetWithCharactersInString:{@", "}];
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];

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
  v4 = [(VUIMediaItemCredits *)self cast];
  v5 = [v4 array];
  v6 = [v3 _stringRepresentationFromArray:v5];

  v7 = objc_opt_class();
  v8 = [(VUIMediaItemCredits *)self directors];
  v9 = [v8 array];
  v10 = [v7 _stringRepresentationFromArray:v9];

  v11 = objc_opt_class();
  v12 = [(VUIMediaItemCredits *)self producers];
  v13 = [v12 array];
  v14 = [v11 _stringRepresentationFromArray:v13];

  v15 = objc_opt_class();
  v16 = [(VUIMediaItemCredits *)self screenwriters];
  v17 = [v16 array];
  v18 = [v15 _stringRepresentationFromArray:v17];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@, %@, %@", v6, v10, v14, v18];

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = [(VUIMediaItemCredits *)self cast];
  v4 = [v3 hash];

  v5 = [(VUIMediaItemCredits *)self directors];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIMediaItemCredits *)self producers];
  v8 = [v7 hash];

  v9 = [(VUIMediaItemCredits *)self screenwriters];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIMediaItemCredits *)self cast];
        v8 = [(VUIMediaItemCredits *)v6 cast];
        v9 = v7;
        v10 = v8;
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

        v14 = [(VUIMediaItemCredits *)self directors];
        v15 = [(VUIMediaItemCredits *)v6 directors];
        v9 = v14;
        v16 = v15;
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

        v18 = [(VUIMediaItemCredits *)self producers];
        v19 = [(VUIMediaItemCredits *)v6 producers];
        v9 = v18;
        v20 = v19;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          v22 = [(VUIMediaItemCredits *)self screenwriters];
          v23 = [(VUIMediaItemCredits *)v6 screenwriters];
          v9 = v22;
          v24 = v23;
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
  v6 = [(VUIMediaItemCredits *)self cast];
  v7 = [v5 stringWithFormat:@"%@=%@", @"cast", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaItemCredits *)self directors];
  v10 = [v8 stringWithFormat:@"%@=%@", @"directors", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaItemCredits *)self producers];
  v13 = [v11 stringWithFormat:@"%@=%@", @"producers", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIMediaItemCredits *)self screenwriters];
  v16 = [v14 stringWithFormat:@"%@=%@", @"screenwriters", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end