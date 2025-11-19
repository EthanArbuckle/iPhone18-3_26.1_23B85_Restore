@interface SXTextLinkAccessibilityElement
- (CGRect)accessibilityFrame;
- (SXTextLinkAccessibilityElement)initWithHyperlinkField:(id)a3 parentRep:(id)a4;
- (SXTextTangierFlowRep)parentRep;
- (_NSRange)rangeInParentRep;
- (id)description;
@end

@implementation SXTextLinkAccessibilityElement

- (SXTextLinkAccessibilityElement)initWithHyperlinkField:(id)a3 parentRep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = SXTextLinkAccessibilityElement;
  v8 = [(SXTextLinkAccessibilityElement *)&v20 initWithAccessibilityContainer:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parentRep, v7);
    v10 = [v6 range];
    v9->_rangeInParentRep.location = [v7 sxaxRepRelativeRangeFromStorageRelativeRange:{v10, v11}];
    v9->_rangeInParentRep.length = v12;
    v13 = [v6 url];
    v14 = [v13 copy];
    url = v9->_url;
    v9->_url = v14;

    v16 = [v6 displayText];
    v17 = [v16 copy];
    displayText = v9->_displayText;
    v9->_displayText = v17;
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  v3 = [(SXTextLinkAccessibilityElement *)self parentRep];
  v4 = [(SXTextLinkAccessibilityElement *)self rangeInParentRep];
  [v3 _accessibilityBoundsForRange:{v4, v5}];
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
  v5 = [(SXTextLinkAccessibilityElement *)self displayText];
  v12.location = [(SXTextLinkAccessibilityElement *)self rangeInParentRep];
  v6 = NSStringFromRange(v12);
  [(SXTextLinkAccessibilityElement *)self accessibilityFrame];
  v7 = NSStringFromCGRect(v13);
  v8 = [(SXTextLinkAccessibilityElement *)self parentRep];
  v9 = [v3 stringWithFormat:@"<%@ %p text=%@ range=%@ frame=%@ parent=%@>", v4, self, v5, v6, v7, v8];

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