@interface CACTextMarkerRange
+ (CACTextMarkerRange)markerRangeWithArray:(id)a3;
+ (CACTextMarkerRange)markerRangeWithNSRange:(_NSRange)a3;
+ (CACTextMarkerRange)markerRangeWithStartMarker:(id)a3 endMarker:(id)a4 forTextElement:(id)a5;
- (BOOL)containsMarker:(id)a3;
- (BOOL)containsRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CACTextMarkerRange)initWithStartMarker:(id)a3 endMarker:(id)a4;
- (NSString)description;
- (_NSRange)nsRange;
- (id)array;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CACTextMarkerRange

+ (CACTextMarkerRange)markerRangeWithStartMarker:(id)a3 endMarker:(id)a4 forTextElement:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:v7 endMarker:v6];

  return v8;
}

+ (CACTextMarkerRange)markerRangeWithNSRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    length = a3.length;
    location = a3.location;
    v6 = [CACTextMarker markerWithIndex:?];
    v7 = [CACTextMarker markerWithIndex:location + length];
    v3 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:v6 endMarker:v7];
  }

  return v3;
}

+ (CACTextMarkerRange)markerRangeWithArray:(id)a3
{
  v3 = a3;
  if ([v3 count] == 2)
  {
    v4 = objc_allocWithZone(CACTextMarker);
    v5 = [v3 objectAtIndex:0];
    v6 = [v4 initWithData:v5];

    v7 = objc_allocWithZone(CACTextMarker);
    v8 = [v3 objectAtIndex:1];
    v9 = [v7 initWithData:v8];

    v10 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:v6 endMarker:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CACTextMarkerRange)initWithStartMarker:(id)a3 endMarker:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CACTextMarkerRange;
  v9 = [(CACTextMarkerRange *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_startMarker, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (_NSRange)nsRange
{
  v3 = [(CACTextMarker *)self->_startMarker index];
  v4 = [(CACTextMarker *)self->_endMarker index]- v3;
  if (v4 < 0)
  {
    v5 = CACLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CACTextMarkerRange *)v5 nsRange];
    }

    v4 = 0;
  }

  v6 = v3;
  result.length = v4;
  result.location = v6;
  return result;
}

- (id)array
{
  v3 = [(CACTextMarker *)self->_startMarker data];
  if (v3)
  {
    v4 = [(CACTextMarker *)self->_endMarker data];
    if (v4)
    {
      v5 = MEMORY[0x277CBEA60];
      v6 = [(CACTextMarker *)self->_startMarker data];
      v7 = [(CACTextMarker *)self->_endMarker data];
      v8 = [v5 arrayWithObjects:{v6, v7, 0}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CACTextMarkerRange allocWithZone:a3];
  startMarker = self->_startMarker;
  endMarker = self->_endMarker;

  return [(CACTextMarkerRange *)v4 initWithStartMarker:startMarker endMarker:endMarker];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  startMarker = self->_startMarker;
  v6 = [v4 startMarker];
  if ([(CACTextMarker *)startMarker isEqual:v6])
  {
    endMarker = self->_endMarker;
    v8 = [v4 endMarker];
    v9 = [(CACTextMarker *)endMarker isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsMarker:(id)a3
{
  v4 = a3;
  if ([CACTextMarker marker:self->_startMarker precedesOrEqualsMarker:v4])
  {
    v5 = [CACTextMarker marker:v4 precedesOrEqualsMarker:self->_endMarker];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsRange:(id)a3
{
  v4 = a3;
  startMarker = self->_startMarker;
  v6 = [v4 startMarker];
  if ([CACTextMarker marker:startMarker precedesOrEqualsMarker:v6])
  {
    v7 = [v4 endMarker];
    v8 = [CACTextMarker marker:v7 precedesOrEqualsMarker:self->_endMarker];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v3 = [(CACTextMarker *)self->_startMarker data];
  if (v3 && ([(CACTextMarker *)self->_endMarker data], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    v7 = [(CACTextMarker *)self->_startMarker data];
    v8 = [(CACTextMarker *)self->_endMarker data];
    v9 = [v6 stringWithFormat:@"CAC Marker Range: start: %@, end: %@", v7, v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAC Marker Range: start: %ld, end: %ld, length: %ld", -[CACTextMarker index](self->_startMarker, "index"), -[CACTextMarker index](self->_endMarker, "index"), -[CACTextMarker index](self->_endMarker, "index") - -[CACTextMarker index](self->_startMarker, "index")];
  }

  return v9;
}

@end