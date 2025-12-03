@interface _REIntegerFeatureValue
+ (id)featureValueWithInt64:(int64_t)int64;
- (BOOL)isEqual:(id)equal;
- (_REIntegerFeatureValue)initWithValue:(int64_t)value;
@end

@implementation _REIntegerFeatureValue

- (_REIntegerFeatureValue)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = _REIntegerFeatureValue;
  result = [(_REIntegerFeatureValue *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

+ (id)featureValueWithInt64:(int64_t)int64
{
  switch(int64)
  {
    case 0:
      if (featureValueWithInt64__onceToken != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value;
      goto LABEL_101;
    case 1:
      if (featureValueWithInt64__onceToken_86 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_85;
      goto LABEL_101;
    case 2:
      if (featureValueWithInt64__onceToken_90 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_89;
      goto LABEL_101;
    case 3:
      if (featureValueWithInt64__onceToken_94 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_93;
      goto LABEL_101;
    case 4:
      if (featureValueWithInt64__onceToken_98 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_97;
      goto LABEL_101;
    case 5:
      if (featureValueWithInt64__onceToken_102 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_101;
      goto LABEL_101;
    case 6:
      if (featureValueWithInt64__onceToken_106 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_105;
      goto LABEL_101;
    case 7:
      if (featureValueWithInt64__onceToken_110 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_109;
      goto LABEL_101;
    case 8:
      if (featureValueWithInt64__onceToken_114 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_113;
      goto LABEL_101;
    case 9:
      if (featureValueWithInt64__onceToken_118 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_117;
      goto LABEL_101;
    case 10:
      if (featureValueWithInt64__onceToken_122 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_121;
      goto LABEL_101;
    case 11:
      if (featureValueWithInt64__onceToken_126 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_125;
      goto LABEL_101;
    case 12:
      if (featureValueWithInt64__onceToken_130 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_129;
      goto LABEL_101;
    case 13:
      if (featureValueWithInt64__onceToken_134 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_133;
      goto LABEL_101;
    case 14:
      if (featureValueWithInt64__onceToken_138 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_137;
      goto LABEL_101;
    case 15:
      if (featureValueWithInt64__onceToken_142 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_141;
      goto LABEL_101;
    case 16:
      if (featureValueWithInt64__onceToken_146 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_145;
      goto LABEL_101;
    case 17:
      if (featureValueWithInt64__onceToken_150 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_149;
      goto LABEL_101;
    case 18:
      if (featureValueWithInt64__onceToken_154 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_153;
      goto LABEL_101;
    case 19:
      if (featureValueWithInt64__onceToken_158 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_157;
      goto LABEL_101;
    case 20:
      if (featureValueWithInt64__onceToken_162 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_161;
      goto LABEL_101;
    case 21:
      if (featureValueWithInt64__onceToken_166 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_165;
      goto LABEL_101;
    case 22:
      if (featureValueWithInt64__onceToken_170 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_169;
      goto LABEL_101;
    case 23:
      if (featureValueWithInt64__onceToken_174 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_173;
      goto LABEL_101;
    case 24:
      if (featureValueWithInt64__onceToken_178 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_177;
      goto LABEL_101;
    case 25:
      if (featureValueWithInt64__onceToken_182 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_181;
      goto LABEL_101;
    case 26:
      if (featureValueWithInt64__onceToken_186 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_185;
      goto LABEL_101;
    case 27:
      if (featureValueWithInt64__onceToken_190 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_189;
      goto LABEL_101;
    case 28:
      if (featureValueWithInt64__onceToken_194 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_193;
      goto LABEL_101;
    case 29:
      if (featureValueWithInt64__onceToken_198 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_197;
      goto LABEL_101;
    case 30:
      if (featureValueWithInt64__onceToken_202 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_201;
      goto LABEL_101;
    case 31:
      if (featureValueWithInt64__onceToken_206 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_205;
      goto LABEL_101;
    case 32:
      if (featureValueWithInt64__onceToken_210 != -1)
      {
        +[_REIntegerFeatureValue featureValueWithInt64:];
      }

      v3 = featureValueWithInt64__Value_209;
LABEL_101:
      v4 = v3;
      break;
    default:
      v4 = [[_REIntegerFeatureValue alloc] initWithValue:int64];
      break;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy->_value;
  }

  return v5;
}

@end