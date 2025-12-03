@interface PKPeerPaymentRecurringBubbleContentViewProvider
+ (id)recurringBubbleViewControllerWithCurrencyAmount:(id)amount memo:(id)memo startDate:(id)date frequency:(unint64_t)frequency;
- (PKPeerPaymentRecurringBubbleContentViewProvider)init;
@end

@implementation PKPeerPaymentRecurringBubbleContentViewProvider

+ (id)recurringBubbleViewControllerWithCurrencyAmount:(id)amount memo:(id)memo startDate:(id)date frequency:(unint64_t)frequency
{
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();
  amountCopy = amount;
  memoCopy = memo;
  v16 = _s9PassKitUI45PeerPaymentRecurringBubbleContentViewProviderC09recurringgI10Controller14currencyAmount4memo9startDate9frequencySo06UIViewL0CSo010PKCurrencyN0C_So06PKPeerefE4MemoC10Foundation0Q0VSo0uefE9FrequencyVtFZ_0(amountCopy, memoCopy, v13, frequency);

  (*(v10 + 8))(v13, v9);

  return v16;
}

- (PKPeerPaymentRecurringBubbleContentViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PeerPaymentRecurringBubbleContentViewProvider();
  return [(PKPeerPaymentRecurringBubbleContentViewProvider *)&v3 init];
}

@end