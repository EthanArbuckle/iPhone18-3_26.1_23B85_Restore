@interface ACMLocale_el
- (ACMLocale_el)init;
- (void)dealloc;
@end

@implementation ACMLocale_el

- (ACMLocale_el)init
{
  v6.receiver = self;
  v6.super_class = ACMLocale_el;
  v2 = [(ACMLocale_el *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:{@"Password field is empty", @"Cancel", @"Sign In", @"Send", @"OK", @"Improper call of the method. AppleConnect SignIn dialog cannot be hidden.", @"Invalid Parameters. Some of input parameters are set incorrectly.", @"Apple ID password", @"You appear to be offline. Please connect to the Internet and try again.", @"Your Apple ID or password was entered incorrectly.", @"Two-step verification required, but user interaction is not allowed.", @"TRUSTED DEVICES", @"To manage your trusted devices visit %@ from a Mac or PC.", @"Failed to create valid service ticket", @"Two-step verification response is empty.", @"SMS to Phone Number", @"The device you select below will be sent a temporary code that you can use to verify your identity.", @"Out of Memory", @"john.appleseed", @"Send code to %@", @"Unexpected method invocation", @"You failed to verify the code too many times. Please send a new code to a different device or try again later.", @"Invalid Data Token. Data Token for verify is not valid.", @"Authentication was canceled by application", @"Invalid passcode length", @"Verification Code", @"This account name has been disabled for security reasons. You can reset your password at %@.", @"Unable to receive messages at any of your devices?", @"Send a new code", @"Oops, an error occurred. Thanks for your patience, please try again later.", @"Required", @"Cannot find this person.", @"Enter verification code", @"Device is not found.", @"Apple ID", @"Two-step verification is enabled for this Apple ID.", @"Can not verify token.", @"Password", @"To protect your security, it’s time to reset your password. It’s easy, just go to %@.", @"The current time on this device seems to be incorrect. You can fix it by going to Settings > General > Date & Time, then try again.", @"Failed to create valid SSO token", @"The verification code you entered is not valid.", @"Continue", @"Verify Identity", @"Authentication was canceled by system", @"Generate code with %@", @"Device list is empty.", @"Invalid Session.", @"Response from server is malformed", @"You have sent too many codes to verify your phone number. Please try again later.", @"phone ending in %@", @"Your account name or password was entered incorrectly.", @"Apple ID field is empty", @"iForgot…", @"Sorry, but you have made too many unsuccessful attempts to verify your identity. For security reasons, you will not be able to make changes to your account for the next eight hours without your Recovery Key.", @"No Device information available.", @"Forgot your ID or Password?", @"This Apple ID has been disabled for security reasons. You can reset your password at %@.", @"Authenticate as %@ with Touch ID", @"Authentication was canceled by user", @"Number ending in %@"}];
    v4 = objc_msgSend( MEMORY[0x29EDB8D80],  "arrayWithObjects:",  @"Το πεδίο συνθηματικού είναι κενό",  @"Ακύρωση",  @"Σύνδεση",  @"Αποστολή",  @"ΟΚ",  @"Λανθασμένη κλήση της μεθόδου. Δεν είναι δυνατή η απόκρυψη του παραθύρου διαλόγου σύνδεσης AppleConnect.",  @"Μη έγκυρες παράμετροι. Μερικές παράμετροι εισαγωγής έχουν ρυθμιστεί λανθασμένα.",  @"Συνθηματικό Apple ID",  @"Φαίνεται ότι είστε εκτός σύνδεσης. Συνδεθείτε στο Internet και δοκιμάστε ξανά.",  @"Εσφαλμένη εισαγωγή Apple ID ή συνθηματικού.",  @"Απαιτείται επαλήθευση δύο βημάτων, αλλά η αλληλεπίδραση χρήστη δεν επιτρέπεται.",  @"ΑΞΙΟΠΙΣΤΕΣ ΣΥΣΚΕΥΕΣ",  @"Για διαχείριση των αξιόπιστων συσκευών σας, επισκεφτείτε τη διεύθυνση %@ από Mac ή PC.",  @"Απέτυχε η δημιουργία έγκυρου εισιτηρίου υπηρεσίας",  @"Η απόκριση της επαλήθευσης δύο βημάτων είναι κενή.",  @"SMS σε τηλεφωνικό αριθμό",  @"Στη συσκευή που θα επιλέξετε παρακάτω θα αποσταλεί ένας προσωρινός κωδικός, τον οποίον μπορείτε να χρησιμοποιήσετε για να επαληθεύσετε την ταυτότητά σας.",  @"Εξαντλήθηκε η μνήμη",  @"maria.milosporou",  @"Αποστολή κωδικού σε %@",  @"Απρόσμενη επίκληση μεθόδου",  @"Δεν καταφέρατε να επαληθεύσετε τον κωδικό πάρα πολλές φορές. Αποστείλτε ένα νέο κωδικό σε διαφορετική συσκευή ή δοκιμάστε ξανά αργότερα.",  @"Μη έγκυρο διαπιστευτήριο δεδομένων. Το διαπιστευτήριο δεδομένων για επαλήθευση δεν είναι έγκυρο.",  @"Ο έλεγχος ταυτότητας ακυρώθηκε από την εφαρμογή",  @"Μη έγκυρο μήκος συνθηματικού",  @"Κωδικός επαλήθευσης",  @"Αυτό το Apple ID έχει απενεργοποιηθεί για λόγους ασφαλείας. Μπορείτε να επαναφέρετε το συνθηματικό σας στο %@.",  @"Είναι αδύνατη η λήψη μηνυμάτων σε οποιαδήποτε από τις συσκευές σας;",
           @"Αποστολή νέου κωδικού",
           @"Παρουσιάστηκε σφάλμα. Ευχαριστούμε για την υπομονή σας, δοκιμάστε ξανά αργότερα.",
           @"Υποχρεωτικό",
           @"Αυτό το άτομο δεν βρέθηκε.",
           @"Εισαγωγή κωδικού επαλήθευσης",
           @"Η συσκευή δεν βρέθηκε.",
           @"Apple ID",
           @"Η επαλήθευση δύο βημάτων είναι ενεργοποιημένη για αυτό το Apple ID.",
           @"Δεν είναι δυνατή η επαλήθευση του διαπιστευτηρίου.",
           @"Συνθηματικό",
           @"Για την προστασία της ασφάλειάς σας, έφτασε η στιγμή να επαναφέρετε το συνθηματικό σας. Είναι εύκολο, απλώς μεταβείτε στο %@.",
           @"Η τρέχουσα ώρα σε αυτήν τη συσκευή φαίνεται να είναι λανθασμένη. Μπορείτε να την επιδιορθώσετε αν μεταβείτε στις Ρυθμίσεις > Γενικά > Ημερομηνία και ώρα, και μετά δοκιμάσετε ξανά.",
           @"Απέτυχε η δημιουργία έγκυρου διαπιστευτηρίου SSO",
           @"Ο κωδικός επαλήθευσης που εισαγάγατε δεν είναι έγκυρος.",
           @"Συνέχεια",
           @"Επαλήθευση ταυτότητας",
           @"Ο έλεγχος ταυτότητας ακυρώθηκε από το σύστημα",
           @"Δημιουργία κωδικού με %@",
           @"Η λίστα συσκευών είναι κενή.",
           @"Μη έγκυρη συνεδρία.",
           @"Η απάντηση από τον διακομιστή έχει λανθασμένη μορφή",
           @"Αποστείλατε πάρα πολλούς κωδικούς για την επαλήθευση του αριθμού τηλεφώνου σας. Δοκιμάστε ξανά αργότερα.",
           @"τηλέφωνο που λήγει σε %@",
           @"Το όνομα λογαριασμού ή το συνθηματικό σας εισήχθη λανθασμένα.",
           @"Το πεδίο Apple ID είναι κενό",
           @"iForgot…",
           @"Λυπούμαστε, αλλά πραγματοποιήσατε πάρα πολλές αποτυχημένες απόπειρες επαλήθευσης της ταυτότητάς σας. Για λόγους ασφάλειας, δεν θα μπορείτε να πραγματοποιήσετε αλλαγές στον λογαριασμό σας για τις επόμενες οκτώ ώρες χωρίς το κλειδί ανάκτησής σας.",
           @"Δεν διατίθενται πληροφορίες συσκευής.",
           @"Ξεχάσατε το ID ή το συνθηματικό σας;",
           @"Αυτό το Apple ID έχει απενεργοποιηθεί για λόγους ασφαλείας. Μπορείτε να επαναφέρετε το συνθηματικό σας στο %@.",
           @"Έλεγχος ταυτότητας ως %@ με Touch ID",
           @"Ο έλεγχος ταυτότητας ακυρώθηκε από τον χρήστη",
           @"Αριθμός που λήγει σε %@");
    -[ACMBaseLocale setLocaleStrings:](v2, "setLocaleStrings:", [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3]);
  }

  return v2;
}

- (void)dealloc
{
  [(ACMBaseLocale *)self setLocaleStrings:0];
  v3.receiver = self;
  v3.super_class = ACMLocale_el;
  [(ACMBaseLocale *)&v3 dealloc];
}

@end