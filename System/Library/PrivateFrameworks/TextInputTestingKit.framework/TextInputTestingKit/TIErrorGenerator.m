@interface TIErrorGenerator
+ (TIErrorGenerator)errorGeneratorWithAttributes:(id)a3;
- (CGPoint)globalBias;
- (CGPoint)persistentBiasForBottomRow:(CGRect)a3;
- (CGPoint)persistentBiasForKeyString:(id)a3 rect:(CGRect)a4;
- (CGPoint)persistentBiasForSpaceBarRect:(CGRect)a3;
- (CGPoint)randomErrorForKeyString:(id)a3 rect:(CGRect)a4;
- (CGPoint)randomPointInDistribution;
- (CGPoint)uniformRandomPointInRect:(CGRect)a3;
- (TIErrorGenerator)initWithAttributes:(id)a3;
- (TIKeyboardInfoDelegate)keyboardInfoDelgate;
- (double)uniformRandomNumber;
- (id)errorForKeyString:(id)a3 rect:(CGRect)a4;
- (void)dealloc;
- (void)setRandomNumberSeed:(unsigned int)a3;
@end

@implementation TIErrorGenerator

- (TIKeyboardInfoDelegate)keyboardInfoDelgate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardInfoDelgate);

  return WeakRetained;
}

- (CGPoint)randomPointInDistribution
{
  [(TIErrorGenerator *)self uniformRandomNumber];
  v4 = v3;
  [(TIErrorGenerator *)self uniformRandomNumber];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (id)errorForKeyString:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [(TIErrorGenerator *)self globalBias];
  v11 = v10;
  v13 = v12;
  if (_isNumberPunctationKey(v9))
  {
    v14 = 24;
  }

  else
  {
    if (!_isControlKey(v9))
    {
      goto LABEL_6;
    }

    v14 = 28;
  }

  v15 = *(&self->super.isa + v14);
  v11 = v11 * v15;
  v13 = v13 * v15;
LABEL_6:
  [(TIErrorGenerator *)self persistentBiasForKeyString:v9 rect:x, y, width, height];
  v17 = v16;
  v19 = v18;
  [(TIErrorGenerator *)self randomErrorForKeyString:v9 rect:x, y, width, height];
  v21 = v20;
  v23 = v22;
  if (_isNumberPunctationKey(v9))
  {
    v24 = 24;
  }

  else
  {
    if (!_isControlKey(v9))
    {
      goto LABEL_11;
    }

    v24 = 28;
  }

  v25 = *(&self->super.isa + v24);
  v21 = v21 * v25;
  v23 = v23 * v25;
LABEL_11:
  v26 = [TIPointError errorWithErrorVector:v11 + 0.0 + v17 + v21, v13 + 0.0 + v19 + v23];

  return v26;
}

- (CGPoint)randomErrorForKeyString:(id)a3 rect:(CGRect)a4
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)persistentBiasForKeyString:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if ([v9 isEqualToString:@" "])
  {
    [(TIErrorGenerator *)self persistentBiasForSpaceBarRect:x, y, width, height];
  }

  else
  {
    v12 = [(TIErrorGenerator *)self keyboardInfoDelgate];
    v13 = [v12 isKeyStringAboveSpaceBar:v9];

    if (!v13)
    {
      v14 = *MEMORY[0x277CBF348];
      v15 = *(MEMORY[0x277CBF348] + 8);
      goto LABEL_7;
    }

    [(TIErrorGenerator *)self persistentBiasForBottomRow:x, y, width, height];
  }

  v14 = v10;
  v15 = v11;
LABEL_7:

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)globalBias
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)persistentBiasForBottomRow:(CGRect)a3
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Height = CGRectGetHeight(a3);
  v7 = [(TIErrorGenerator *)self spacingErrorsApplied];
  if (v7 < [(TIErrorGenerator *)self spacingErrorMaxCount])
  {
    [(TIErrorGenerator *)self uniformRandomNumber];
    v9 = v8;
    [(TIErrorGenerator *)self probTappingSpaceInsteadOfBottomRow];
    if (v9 < v10)
    {
      v5 = v5 + Height;
      [(TIErrorGenerator *)self setSpacingErrorsApplied:[(TIErrorGenerator *)self spacingErrorsApplied]+ 1];
    }
  }

  v11 = v4;
  v12 = v5;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)persistentBiasForSpaceBarRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = CGRectGetHeight(a3);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v11 = CGRectGetWidth(v25) - v10;
  v12 = [(TIErrorGenerator *)self spaceHorizontalErrorMode];
  v13 = v8 + v11 * -0.5;
  v14 = v8 + v11 * 0.5;
  if (v12 != 2)
  {
    v14 = v8;
  }

  if (v12 == 3)
  {
    v15 = v8 + v11 * -0.5;
  }

  else
  {
    v15 = v14;
  }

  [(TIErrorGenerator *)self spaceVerticalBias:v13];
  v17 = v9 - v10 * v16;
  v18 = [(TIErrorGenerator *)self spacingErrorsApplied];
  if (v18 < [(TIErrorGenerator *)self spacingErrorMaxCount])
  {
    [(TIErrorGenerator *)self uniformRandomNumber];
    v20 = v19;
    [(TIErrorGenerator *)self probTappingSpaceReplacedByBottomRow];
    if (v20 < v21)
    {
      v17 = v17 - v10;
      [(TIErrorGenerator *)self setSpacingErrorsApplied:[(TIErrorGenerator *)self spacingErrorsApplied]+ 1];
    }
  }

  v22 = v15;
  v23 = v17;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)uniformRandomPointInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TIErrorGenerator *)self uniformRandomNumber];
  v9 = x + v8 * width;
  [(TIErrorGenerator *)self uniformRandomNumber];
  v11 = y + v10 * height;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

- (double)uniformRandomNumber
{
  m_generator = self->m_generator;
  m_distribution = self->m_distribution;
  v4 = m_distribution[1] - *m_distribution;
  v5 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator);
  return *m_distribution + v4 * ((v5 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(m_generator) * 4294967300.0) * 5.42101086e-20);
}

- (void)setRandomNumberSeed:(unsigned int)a3
{
  v3 = 257 * self->_RNGSeedSalt + a3;
  m_generator = self->m_generator;
  *m_generator = v3;
  for (i = 1; i != 624; ++i)
  {
    v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
    m_generator[i] = v3;
  }

  *(m_generator + 312) = 0;
  [(TIErrorGenerator *)self reset];
}

- (void)dealloc
{
  m_generator = self->m_generator;
  if (m_generator)
  {
    MEMORY[0x26D6C07C0](m_generator, 0x1000C407BAC9B3ELL);
  }

  m_distribution = self->m_distribution;
  if (m_distribution)
  {
    MEMORY[0x26D6C07C0](m_distribution, 0x1000C40451B5BE8);
  }

  v5.receiver = self;
  v5.super_class = TIErrorGenerator;
  [(TIErrorGenerator *)&v5 dealloc];
}

- (TIErrorGenerator)initWithAttributes:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = TIErrorGenerator;
  v5 = [(TIErrorGenerator *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"SPACE_HORIZONTAL_ERROR_BIAS"];
    v7 = v6;
    if (!v6)
    {
      v6 = @"1";
    }

    v5->_spaceHorizontalErrorMode = [(__CFString *)v6 integerValue];

    v8 = [v4 objectForKey:@"SPACE_VERTICAL_ERROR_BIAS"];
    v9 = v8;
    if (!v8)
    {
      v8 = @"0.0";
    }

    [(__CFString *)v8 floatValue];
    v5->_spaceVerticalBias = v10;

    v11 = [v4 valueForKey:@"PROB_SPACE_REPLACED_BY_BOTTOM_ROW"];
    [v11 floatValue];
    v5->_probTappingSpaceReplacedByBottomRow = v12;

    v13 = [v4 valueForKey:@"PROB_SPACE_INSTEAD_OF_BOTTOM_ROW"];
    [v13 floatValue];
    v5->_probTappingSpaceInsteadOfBottomRow = v14;

    v15 = [v4 valueForKey:@"MAX_SPACE_ERRORS_PER_TEST"];
    v5->_spacingErrorMaxCount = [v15 intValue];

    v16 = [v4 valueForKey:@"REL_ERROR_NUMBERS_PUNCTATION"];
    v17 = v16;
    if (!v16)
    {
      v16 = &unk_287ED4BB8;
    }

    [v16 floatValue];
    v5->_relErrorNumbersPunctuation = v18;

    v19 = [v4 valueForKey:@"REL_ERROR_CONTROL_KEYS"];
    v20 = v19;
    if (!v19)
    {
      v19 = &unk_287ED4BB8;
    }

    [v19 floatValue];
    v5->_relErrorControlKeys = v21;

    v22 = [v4 valueForKey:@"RNG_SEED_SALT"];
    v23 = v22;
    if (!v22)
    {
      v22 = &unk_287ED4BC8;
    }

    v5->_RNGSeedSalt = [v22 integerValue];

    operator new();
  }

  return 0;
}

+ (TIErrorGenerator)errorGeneratorWithAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"ERROR_GENERATOR"];
  v5 = NSClassFromString(v4);
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = [[v5 alloc] initWithAttributes:v3];

  return v6;
}

@end