@interface PTCinematographyTransition
- (PTCinematographyTransition)initWithKind:(unint64_t)kind;
- (float)coefficientForNormalizedTime:(float)time;
- (float)linearCoefficientForNormalizedTime:(float)result;
@end

@implementation PTCinematographyTransition

- (PTCinematographyTransition)initWithKind:(unint64_t)kind
{
  v5.receiver = self;
  v5.super_class = PTCinematographyTransition;
  result = [(PTCinematographyTransition *)&v5 init];
  if (result)
  {
    result->_kind = kind;
  }

  return result;
}

- (float)coefficientForNormalizedTime:(float)time
{
  if ([(PTCinematographyTransition *)self kind]== 1)
  {
    *&v5 = time;

    [(PTCinematographyTransition *)self linearCoefficientForNormalizedTime:v5];
  }

  else
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PTCinematographyTransition *)self coefficientForNormalizedTime:v7];
    }

    return 0.0;
  }

  return result;
}

- (float)linearCoefficientForNormalizedTime:(float)result
{
  v3 = 1.0;
  if (result > 1.0)
  {
    v4 = 1;
  }

  else
  {
    v3 = 0.0;
    v4 = result < 0.0;
  }

  if (v4)
  {
    return v3;
  }

  return result;
}

- (void)coefficientForNormalizedTime:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 kind];
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "unimplemented transition kind %ld", &v3, 0xCu);
}

@end