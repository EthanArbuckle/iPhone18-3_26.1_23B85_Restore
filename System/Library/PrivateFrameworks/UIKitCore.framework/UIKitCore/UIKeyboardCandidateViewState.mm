@interface UIKeyboardCandidateViewState
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (BOOL)isEqual:(id)equal;
- (CGPoint)arrowButtonOffset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKeyboardCandidateViewState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UIKeyboardCandidateViewStyle *)self->_style copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(UIKeyboardCandidateViewStyle *)self->_disambiguationStyle copy];
  v8 = v4[3];
  v4[3] = v7;

  v4[4] = self->_primaryGridRowType;
  v4[5] = self->_disambiguationGridRowType;
  v4[6] = self->_disambiguationGridPosition;
  v4[7] = self->_sortControlPosition;
  v4[8] = self->_inlineTextViewPosition;
  v4[9] = self->_arrowButtonPosition;
  v4[10] = self->_arrowButtonDirection;
  *(v4 + 8) = self->_hasBackdrop;
  *(v4 + 9) = self->_candidateNumberEnabled;
  v4[11] = *&self->_yOffset;
  v4[12] = *&self->_additionalHeight;
  *(v4 + 7) = self->_arrowButtonOffset;
  v4[13] = self->_borders;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    style = self->_style;
    v7 = v5->_style;
    v8 = v5;
    v32 = [(UIKeyboardCandidateViewStyle *)style isEqual:v7];
    v9 = [(UIKeyboardCandidateViewStyle *)self->_disambiguationStyle isEqual:v8->_disambiguationStyle];
    v31 = *&self->_disambiguationGridPosition;
    v26 = *&v8->_primaryGridRowType;
    v27 = *&v8->_disambiguationGridPosition;
    v29 = *&self->_inlineTextViewPosition;
    v30 = *&self->_primaryGridRowType;
    v28 = *&v8->_inlineTextViewPosition;
    arrowButtonDirection = self->_arrowButtonDirection;
    v11 = v8->_arrowButtonDirection;
    v12 = self->_hasBackdrop == v8->_hasBackdrop;
    candidateNumberEnabled = self->_candidateNumberEnabled;
    v14 = v8->_candidateNumberEnabled;
    v24 = *&v8->_yOffset;
    v25 = *&self->_yOffset;
    arrowButtonOffset = v8->_arrowButtonOffset;
    v23 = self->_arrowButtonOffset;
    borders = self->_borders;
    v16 = v8->_borders;

    v17.i64[0] = arrowButtonDirection;
    v17.i64[1] = borders;
    v18.i64[0] = v11;
    v18.i64[1] = v16;
    v19 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v30, v26), vceqq_s64(v31, v27)), vuzp1q_s32(vceqq_s64(v29, v28), vceqq_s64(v17, v18))))) & vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v25, v24), vceqq_f64(v23, arrowButtonOffset)))) & v12;
    if (candidateNumberEnabled != v14)
    {
      v19 = 0;
    }

    v20 = v19 & (v9 && v32);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___UIKeyboardCandidateViewState;
  if ((objc_msgSendSuper2(&v6, sel_resolveInstanceMethod_) & 1) == 0)
  {
    v4 = objc_opt_class();
    class_addMethod(v4, method, nullMethodIMP, "v@:");
  }

  return 1;
}

- (CGPoint)arrowButtonOffset
{
  x = self->_arrowButtonOffset.x;
  y = self->_arrowButtonOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end