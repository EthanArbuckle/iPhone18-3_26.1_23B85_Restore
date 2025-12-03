@interface SXTextLinkAccessibilityElement
- (CGRect)accessibilityFrame;
- (SXTextLinkAccessibilityElement)initWithHyperlinkField:(id)field parentRep:(id)rep;
- (SXTextTangierFlowRep)parentRep;
- (_NSRange)rangeInParentRep;
- (id)description;
@end

@implementation SXTextLinkAccessibilityElement

- (SXTextLinkAccessibilityElement)initWithHyperlinkField:(id)field parentRep:(id)rep
{
  fieldCopy = field;
  repCopy = rep;
  v20.receiver = self;
  v20.super_class = SXTextLinkAccessibilityElement;
  v8 = [(SXTextLinkAccessibilityElement *)&v20 initWithAccessibilityContainer:repCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parentRep, repCopy);
    range = [fieldCopy range];
    v9->_rangeInParentRep.location = [repCopy sxaxRepRelativeRangeFromStorageRelativeRange:{range, v11}];
    v9->_rangeInParentRep.length = v12;
    v13 = [fieldCopy url];
    v14 = [v13 copy];
    url = v9->_url;
    v9->_url = v14;

    displayText = [fieldCopy displayText];
    v17 = [displayText copy];
    displayText = v9->_displayText;
    v9->_displayText = v17;
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  parentRep = [(SXTextLinkAccessibilityElement *)self parentRep];
  rangeInParentRep = [(SXTextLinkAccessibilityElement *)self rangeInParentRep];
  [parentRep _accessibilityBoundsForRange:{rangeInParentRep, v5}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayText = [(SXTextLinkAccessibilityElement *)self displayText];
  v12.location = [(SXTextLinkAccessibilityElement *)self rangeInParentRep];
  v6 = NSStringFromRange(v12);
  [(SXTextLinkAccessibilityElement *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v13);
  parentRep = [(SXTextLinkAccessibilityElement *)self parentRep];
  v9 = [v3 stringWithFormat:@"<%@ %p text=%@ range=%@ frame=%@ parent=%@>", v4, self, displayText, v6, v7, parentRep];

  return v9;
}

- (SXTextTangierFlowRep)parentRep
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRep);

  return WeakRetained;
}

- (_NSRange)rangeInParentRep
{
  p_rangeInParentRep = &self->_rangeInParentRep;
  location = self->_rangeInParentRep.location;
  length = p_rangeInParentRep->length;
  result.length = length;
  result.location = location;
  return result;
}

@end