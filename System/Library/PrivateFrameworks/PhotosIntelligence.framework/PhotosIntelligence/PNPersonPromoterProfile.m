@interface PNPersonPromoterProfile
- (PNPersonPromoterProfile)init;
@end

@implementation PNPersonPromoterProfile

- (PNPersonPromoterProfile)init
{
  v8.receiver = self;
  v8.super_class = PNPersonPromoterProfile;
  result = [(PNPersonPromoterProfile *)&v8 init];
  if (result)
  {
    *&result->_interestingPersonMomentsNormalDistributionSigmaFactor = xmmword_1C7592F80;
    *&result->_interestingPersonFacesNormalDistributionSigmaFactor = xmmword_1C7592F80;
    *&result->_interestingPersonTimeNormalDistributionSigmaFactor = xmmword_1C7592F80;
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_highlyInterestingPersonFacesCumulativeNormalDistributionUpperTail = _Q0;
    *&result->_interestingPersonLastSeenNormalDistributionSigmaFactor = xmmword_1C7592F90;
    *&result->_interestingPersonLastSeenCumulativeNormalDistributionUpperTail = xmmword_1C7592FA0;
    *&result->_highlyInterestingPersonLastSeenCumulativeNormalDistributionLowerTail = xmmword_1C7592FB0;
    *&result->_interestingPersonNormalDistributionsToMatch = xmmword_1C756D570;
  }

  return result;
}

@end