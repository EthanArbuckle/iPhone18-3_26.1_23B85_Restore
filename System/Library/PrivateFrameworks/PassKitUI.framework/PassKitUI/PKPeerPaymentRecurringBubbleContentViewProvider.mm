@interface PKPeerPaymentRecurringBubbleContentViewProvider
+ (id)recurringBubbleViewControllerWithCurrencyAmount:(id)a3 memo:(id)a4 startDate:(id)a5 frequency:(unint64_t)a6;
- (PKPeerPaymentRecurringBubbleContentViewProvider)init;
@end

@implementation PKPeerPaymentRecurringBubbleContentViewProvider

+ (id)recurringBubbleViewControllerWithCurrencyAmount:(id)a3 memo:(id)a4 startDate:(id)a5 frequency:(unint64_t)a6
{
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();
  v14 = a3;
  v15 = a4;
  v16 = _s9PassKitUI45PeerPaymentRecurringBubbleContentViewProviderC09recurringgI10Controller14currencyAmount4memo9startDate9frequencySo06UIViewL0CSo010PKCurrencyN0C_So06PKPeerefE4MemoC10Foundation0Q0VSo0uefE9FrequencyVtFZ_0(v14, v15, v13, a6);

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