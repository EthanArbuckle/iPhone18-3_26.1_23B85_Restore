@interface PICurveControlPoint
- (BOOL)isEqual:(id)a3;
- (PICurveControlPoint)initWithDictionary:(id)a3;
- (PICurveControlPoint)initWithX:(double)a3 y:(double)a4 editable:(BOOL)a5;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation PICurveControlPoint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_editable)
  {
    v5 = "editable";
  }

  else
  {
    v5 = "not editable";
  }

  return [v3 stringWithFormat:@"<%@:%p> [(%.3f, %.3f), %s]", v4, self, *&self->_x, *&self->_y, v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PICurveControlPoint *)self x];
    v7 = v6;
    [v5 x];
    if (v7 == v8 && (-[PICurveControlPoint y](self, "y"), v10 = v9, [v5 y], v10 == v11))
    {
      v14 = [(PICurveControlPoint *)self isEditable];
      v12 = v14 ^ [v5 isEditable] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(PICurveControlPoint *)self x];
  v4 = [v3 numberWithDouble:?];
  v5 = 0x130F50B94BD2BDLL * [v4 hash];

  v6 = MEMORY[0x1E696AD98];
  [(PICurveControlPoint *)self y];
  v7 = [v6 numberWithDouble:?];
  v8 = 0x19E7B7D8491DEDLL * [v7 hash];

  v9 = [(PICurveControlPoint *)self isEditable];
  v10 = 0x1DB601AC6044F9;
  if (!v9)
  {
    v10 = 0;
  }

  return v8 ^ v5 ^ v10;
}

- (id)dictionaryRepresentation
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"x";
  v3 = MEMORY[0x1E696AD98];
  [(PICurveControlPoint *)self x];
  v4 = [v3 numberWithDouble:?];
  v11[0] = v4;
  v10[1] = @"y";
  v5 = MEMORY[0x1E696AD98];
  [(PICurveControlPoint *)self y];
  v6 = [v5 numberWithDouble:?];
  v11[1] = v6;
  v10[2] = @"editable";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PICurveControlPoint isEditable](self, "isEditable")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (PICurveControlPoint)initWithDictionary:(id)a3
{
  v11.receiver = self;
  v11.super_class = PICurveControlPoint;
  v3 = a3;
  v4 = [(PICurveControlPoint *)&v11 init];
  v5 = [v3 objectForKeyedSubscript:{@"x", v11.receiver, v11.super_class}];
  [v5 doubleValue];
  v4->_x = v6;

  v7 = [v3 objectForKeyedSubscript:@"y"];
  [v7 doubleValue];
  v4->_y = v8;

  v9 = [v3 objectForKeyedSubscript:@"editable"];

  v4->_editable = [v9 BOOLValue];
  return v4;
}

- (PICurveControlPoint)initWithX:(double)a3 y:(double)a4 editable:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = PICurveControlPoint;
  result = [(PICurveControlPoint *)&v9 init];
  result->_x = a3;
  result->_y = a4;
  result->_editable = a5;
  return result;
}

@end